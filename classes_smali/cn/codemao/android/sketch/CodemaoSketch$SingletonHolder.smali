.class Lcn/codemao/android/sketch/CodemaoSketch$SingletonHolder;
.super Ljava/lang/Object;
.source "CodemaoSketch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/sketch/CodemaoSketch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field static final instance:Lcn/codemao/android/sketch/CodemaoSketch;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Lcn/codemao/android/sketch/CodemaoSketch;

    invoke-direct {v0}, Lcn/codemao/android/sketch/CodemaoSketch;-><init>()V

    sput-object v0, Lcn/codemao/android/sketch/CodemaoSketch$SingletonHolder;->instance:Lcn/codemao/android/sketch/CodemaoSketch;

    return-void
.end method
