.class public abstract Lcn/codemao/android/sketch/view/intercepter/TouchDownIntercepter;
.super Ljava/lang/Object;
.source "TouchDownIntercepter.java"


# instance fields
.field private mPaint:Lcn/codemao/android/sketch/view/paint/IPaint;


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/view/paint/IPaint;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcn/codemao/android/sketch/view/intercepter/TouchDownIntercepter;->mPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    return-void
.end method


# virtual methods
.method public getmPaint()Lcn/codemao/android/sketch/view/paint/IPaint;
    .registers 2

    .line 26
    iget-object v0, p0, Lcn/codemao/android/sketch/view/intercepter/TouchDownIntercepter;->mPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    return-object v0
.end method

.method public abstract intercept(Lcn/codemao/android/sketch/view/paint/IPaint;FF)Z
.end method
