import 'package:flutter/material.dart';


class SliderModel{

  String imageAssetPath;
  String title;
  String desc1;
  String desc2;
  String desc3;

  SliderModel({this.imageAssetPath,this.title,this.desc1, this.desc2, this.desc3});

  void setImageAssetPath(String getImageAssetPath){
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc1(String getDesc){
    desc1 = getDesc;
  }
  void setDesc2(String getDesc){
    desc2 = getDesc;
  }
  void setDesc3(String getDesc){
    desc3 = getDesc;
  }

  String getImageAssetPath(){
    return imageAssetPath;
  }

  String getTitle(){
    return title;
  }

  String getDesc1(){
    return desc1;
  }
  String getDesc2(){
    return desc2;
  }
  String getDesc3(){
    return desc3;
  }

}


List<SliderModel> getSlides(){

  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  //sliderModel.setDesc1("\u2022   Watch short Investing Courses\n\n\u2022   Complete exciting challenges\n\n\u2022    Download your investing Certificate");
  sliderModel.setDesc1("    Watch short Investing Courses");
  sliderModel.setDesc2("    Complete exciting challenges");
  sliderModel.setDesc3("    Download your investing Certificate");
  sliderModel.setTitle("Courses to make you a\nsmart investor");
  sliderModel.setImageAssetPath("images/intro1.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  //sliderModel.setDesc("\u2022   50,000+ Research Reports\n\n\u2022    Insights on 500+ companies\n\n\u2022    Hundreds of weekly Investing Signals");
  sliderModel.setDesc1("    50,000+ Research Reports");
  sliderModel.setDesc2("    Insights on 500+ companies");
  sliderModel.setDesc3("    Hundreds of weekly Investing Signals");
  sliderModel.setTitle("Market Insights to help\nyou profit");
  sliderModel.setImageAssetPath("images/intro2.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  //sliderModel.setDesc("\u2022   Play in exciting leagues\n\n\u2022    Compete with friends and colleagues\n\n\u2022   Win cash prized and job placements");
  sliderModel.setDesc1("    Play in exciting leagues");
  sliderModel.setDesc2("    Compete with friends and colleagues");
  sliderModel.setDesc3("    Win cash prized and job placements");
  sliderModel.setTitle("Competitions to help\nyou practice & win");
  sliderModel.setImageAssetPath("images/intro3.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}