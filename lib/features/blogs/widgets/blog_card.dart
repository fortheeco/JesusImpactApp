import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jimpact/models/blogs/blog_model.dart';
import 'package:jimpact/theme/palette.dart';
import 'package:jimpact/utils/app_extensions.dart';
import 'package:jimpact/utils/widgets/image_loader.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BlogCardd extends StatelessWidget {
  final BlogModel blog;
  const BlogCardd({
    super.key,
    required this.blog,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.zero,
      child: Container(
        height: 290.h,
        width: 180.w,
        decoration: BoxDecoration(
          color: Palette.whiteColor,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Column(
          children: [
            ImageLoader(
              height: 124.h,
              width: double.infinity,
              imageUrl: blog.images!,
            ),
            16.sbH,

            //! title
            Padding(
              padding: 16.padH,
              child: Column(
                children: [
                  SizedBox(
                    height: 35.h,
                    child: blog.title!
                        .txt(
                          size: 13.sp,
                          fontWeightType: TxtFntWt.med,
                          colorType: TxtClrType.g54,
                          textAlign: TextAlign.start,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )
                        .align(Alignment.topLeft),
                  ),
                  8.sbH,
                  blog.content!.txt(
                    size: 11.sp,
                    fontWeightType: TxtFntWt.reg,
                    colorType: TxtClrType.g78,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  16.sbH,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      'Jesus Impact'.txt(
                        size: 10.sp,
                        fontWeightType: TxtFntWt.med,
                        colorType: TxtClrType.g54,
                      ),
                      Row(
                        children: [
                          blog.views!.length.toString().txt(
                              size: 12.sp,
                              fontWeightType: TxtFntWt.med,
                              color: Palette.redColor),
                          5.sbW,
                          Icon(PhosphorIcons.userFill,
                              size: 14.sp, color: Palette.redColor),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BlogCard extends StatelessWidget {
  const BlogCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.zero,
      child: Container(
        height: 290.h,
        width: 180.w,
        decoration: BoxDecoration(
          color: Palette.whiteColor,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Placeholder(
                fallbackHeight: 124.h,
                color: Palette.textInputFillGreyEE,
              ),
            ),
            16.sbH,

            //! title
            Padding(
              padding: 16.padH,
              child: Column(
                children: [
                  'The Reason for the Season'.txt(
                    size: 13.sp,
                    fontWeightType: TxtFntWt.med,
                    colorType: TxtClrType.g54,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  8.sbH,
                  'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed'
                      .txt(
                    size: 11.sp,
                    fontWeightType: TxtFntWt.reg,
                    colorType: TxtClrType.g78,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  16.sbH,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      'Jesus Impact'.txt(
                        size: 10.sp,
                        fontWeightType: TxtFntWt.med,
                        colorType: TxtClrType.g54,
                      ),
                      Row(
                        children: [
                          '12'.txt(
                              size: 12.sp,
                              fontWeightType: TxtFntWt.med,
                              color: Palette.redColor),
                          5.sbW,
                          Icon(PhosphorIcons.userFill,
                              size: 14.sp, color: Palette.redColor),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//! skeleton loader
class BlogCardSkeleton extends StatelessWidget {
  const BlogCardSkeleton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: Stack(
        children: [
          Container(
            height: 290.h,
            width: 180.w,
            decoration: BoxDecoration(
              color: Palette.whiteColor,
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Palette.textInputFillGreyEE,
                        borderRadius: BorderRadius.circular(7.r)),
                    height: 124.h,
                  ),
                ),
                16.sbH,

                //! title
                Padding(
                  padding: 16.padH,
                  child: Column(
                    children: [
                      'The Reason for the Season'.txt(
                        size: 13.sp,
                        fontWeightType: TxtFntWt.med,
                        colorType: TxtClrType.g54,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      8.sbH,
                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed'
                          .txt(
                        size: 11.sp,
                        fontWeightType: TxtFntWt.reg,
                        colorType: TxtClrType.g78,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      16.sbH,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          'Jesus Impact'.txt(
                            size: 10.sp,
                            fontWeightType: TxtFntWt.med,
                            colorType: TxtClrType.g54,
                          ),
                          Row(
                            children: [
                              '12'.txt(
                                  size: 12.sp,
                                  fontWeightType: TxtFntWt.med,
                                  color: Palette.redColor),
                              5.sbW,
                              Icon(PhosphorIcons.userFill,
                                  size: 14.sp, color: Palette.redColor),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
