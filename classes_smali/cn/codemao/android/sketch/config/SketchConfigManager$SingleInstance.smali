.class Lcn/codemao/android/sketch/config/SketchConfigManager$SingleInstance;
.super Ljava/lang/Object;
.source "SketchConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/sketch/config/SketchConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleInstance"
.end annotation


# static fields
.field private static final INSTANCE:Lcn/codemao/android/sketch/config/SketchConfigManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Lcn/codemao/android/sketch/config/SketchConfigManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/codemao/android/sketch/config/SketchConfigManager;-><init>(Lcn/codemao/android/sketch/config/SketchConfigManager$1;)V

    sput-object v0, Lcn/codemao/android/sketch/config/SketchConfigManager$SingleInstance;->INSTANCE:Lcn/codemao/android/sketch/config/SketchConfigManager;

    return-void
.end method

.method static synthetic access$100()Lcn/codemao/android/sketch/config/SketchConfigManager;
    .registers 1

    .line 17
    sget-object v0, Lcn/codemao/android/sketch/config/SketchConfigManager$SingleInstance;->INSTANCE:Lcn/codemao/android/sketch/config/SketchConfigManager;

    return-object v0
.end method
