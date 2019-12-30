import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wyyx_hc/provide/categoryProvide.dart';
import '../model/categoryItemListModel.dart';
import 'package:provide/provide.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'categoryBanner.dart';

class CategoryItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CategoryItemListModel categoryItemListModel =
        Provide.value<CategoryProvide>(context).categoryItemListModel;
    final categoryGroupList = categoryItemListModel.category.categoryGroupList;
    int itemCount = categoryGroupList.length * 2;

    //滑动视图重建不保持偏移
    ScrollController _scrollController =
        ScrollController(keepScrollOffset: false);

    if (!Provide.value<CategoryProvide>(context).isloading) {
      return Expanded(
        child: Container(
            child: CustomScrollView(
          controller: _scrollController,
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: CategoryBanner(),
            ),
            SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                //偶数加载标题栏，奇数加载GridView
                if (index.isOdd) {
                  return _listCell(context, index ~/ 2);
                } else {
                  final subCategoryList = categoryGroupList[index ~/ 2];

                  if (subCategoryList.name.length != 0) {
                    return _sectionHeader(subCategoryList);
                  } else {
                    return SizedBox(
                      height: 0,
                    );
                  }
                }
              }, childCount: itemCount),
            )
          ],
        )),
      );
    } else {
      return Expanded(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
  }

  Widget _sectionHeader(subCategoryList) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 8, 0, 8),
      height: ScreenUtil().setWidth(70),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 1, color: Colors.black12))),
      child: Text(
        subCategoryList.name,
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: ScreenUtil().setSp(25)),
      ),
    );
  }

  Widget _listCell(context, index) {
    CategoryItemListModel categoryItemListModel =
        Provide.value<CategoryProvide>(context).categoryItemListModel;
    final categoryGroupList = categoryItemListModel.category.categoryGroupList;
    final subCategoryList = categoryGroupList[index];

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, childAspectRatio: 0.8),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: subCategoryList.categoryList.length,
      itemBuilder: (context, index) {
        return _item(context, subCategoryList, index);
      },
    );
  }

  Widget _item(context, subCategoryList, index) {
    final categoryList = subCategoryList.categoryList;

    return InkWell(
      onTap: () {
        //跳转webview
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CachedNetworkImage(
              imageUrl: categoryList[index].prettyBannerUrl,
              width: ScreenUtil().setWidth(120),
            ),
            Container(
              width: ScreenUtil().setWidth(140),
              child: Text(
                categoryList[index].name,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
