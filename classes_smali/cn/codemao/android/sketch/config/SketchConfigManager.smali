.class public Lcn/codemao/android/sketch/config/SketchConfigManager;
.super Ljava/lang/Object;
.source "SketchConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/sketch/config/SketchConfigManager$SingleInstance;
    }
.end annotation


# instance fields
.field private mApp:Landroid/app/Application;

.field private mLocale:Ljava/util/Locale;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/codemao/android/sketch/config/SketchConfigManager$1;)V
    .registers 2

    .line 12
    invoke-direct {p0}, Lcn/codemao/android/sketch/config/SketchConfigManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/codemao/android/sketch/config/SketchConfigManager;
    .registers 1

    .line 22
    invoke-static {}, Lcn/codemao/android/sketch/config/SketchConfigManager$SingleInstance;->access$100()Lcn/codemao/android/sketch/config/SketchConfigManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApp()Landroid/app/Application;
    .registers 2

    .line 32
    iget-object v0, p0, Lcn/codemao/android/sketch/config/SketchConfigManager;->mApp:Landroid/app/Application;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .line 41
    iget-object v0, p0, Lcn/codemao/android/sketch/config/SketchConfigManager;->mLocale:Ljava/util/Locale;

    if-nez v0, :cond_8

    .line 42
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    iput-object v0, p0, Lcn/codemao/android/sketch/config/SketchConfigManager;->mLocale:Ljava/util/Locale;

    .line 44
    :cond_8
    iget-object v0, p0, Lcn/codemao/android/sketch/config/SketchConfigManager;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public setApplication(Landroid/app/Application;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcn/codemao/android/sketch/config/SketchConfigManager;->mApp:Landroid/app/Application;

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcn/codemao/android/sketch/config/SketchConfigManager;->mLocale:Ljava/util/Locale;

    return-void
.end method
