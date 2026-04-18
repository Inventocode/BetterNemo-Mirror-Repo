.class public Lcn/codemao/android/sketch/CodemaoSketch;
.super Ljava/lang/Object;
.source "CodemaoSketch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/sketch/CodemaoSketch$SingletonHolder;
    }
.end annotation


# static fields
.field public static mBgCachePath:Ljava/lang/String;


# instance fields
.field public isPad:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcn/codemao/android/sketch/CodemaoSketch;->isPad:Z

    return-void
.end method

.method public static instance()Lcn/codemao/android/sketch/CodemaoSketch;
    .registers 1

    .line 24
    sget-object v0, Lcn/codemao/android/sketch/CodemaoSketch$SingletonHolder;->instance:Lcn/codemao/android/sketch/CodemaoSketch;

    return-object v0
.end method


# virtual methods
.method public goBitmapActorActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/codemao/android/sketch/SketchActivity2;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "activity"

    const/4 v2, 0x1

    .line 147
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "savePath"

    .line 148
    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p5, "imagePath"

    .line 149
    invoke-virtual {v0, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "bgPath"

    .line 150
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "roleName"

    .line 151
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "isLandscapeStage"

    .line 152
    invoke-virtual {v0, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p2, 0x1e61

    .line 153
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public goBitmapBackgroundActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/codemao/android/sketch/SketchActivity2;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "activity"

    const/4 v2, 0x3

    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "imagePath"

    .line 98
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "savePath"

    .line 99
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "isLandscapeStage"

    .line 100
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p2, 0x1e61

    .line 101
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public goBitmapBackgroundEditActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 9

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/codemao/android/sketch/SketchActivity2;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "activity"

    const/4 v2, 0x3

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "isBackGroundEdit"

    const/4 v2, 0x1

    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "imagePath"

    .line 115
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "savePath"

    .line 116
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "isLandscapeStage"

    .line 117
    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    invoke-virtual {p1, v0, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public goCanvasActorActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/codemao/android/sketch/SketchActivity2;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "activity"

    const/4 v2, 0x0

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "savePath"

    .line 53
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "bgPath"

    .line 54
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "roleName"

    .line 55
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "isLandscapeStage"

    .line 56
    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p2, 0x1e61

    .line 57
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public goCanvasActorEditActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 11

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/codemao/android/sketch/SketchActivity2;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "activity"

    const/4 v2, 0x0

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "savePath"

    .line 71
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "bgPath"

    .line 72
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "roleName"

    .line 73
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "materialUrl"

    .line 74
    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "isLandscapeStage"

    .line 75
    invoke-virtual {v0, p2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    invoke-virtual {p1, v0, p6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public goCanvasBackgroundActivity(Landroid/app/Activity;Ljava/lang/String;Z)V
    .registers 7

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/codemao/android/sketch/SketchActivity2;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "activity"

    const/4 v2, 0x2

    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "savePath"

    .line 130
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "isLandscapeStage"

    .line 131
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p2, 0x1e61

    .line 132
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public init(Landroid/app/Application;ZLjava/lang/String;ZLcn/codemao/android/sketch/utils/ReportUtils$ReportCallBack;)V
    .registers 7

    .line 35
    invoke-static {}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getInstance()Lcn/codemao/android/sketch/config/SketchConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/config/SketchConfigManager;->setApplication(Landroid/app/Application;)V

    .line 36
    sput-object p3, Lcn/codemao/android/sketch/CodemaoSketch;->mBgCachePath:Ljava/lang/String;

    .line 37
    iput-boolean p4, p0, Lcn/codemao/android/sketch/CodemaoSketch;->isPad:Z

    .line 38
    invoke-static {}, Lcn/codemao/android/sketch/utils/ReportUtils;->getInstance()Lcn/codemao/android/sketch/utils/ReportUtils;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcn/codemao/android/sketch/utils/ReportUtils;->init(Lcn/codemao/android/sketch/utils/ReportUtils$ReportCallBack;)V

    .line 39
    invoke-static {p2}, Lcn/codemao/android/sketch/utils/LogUtils;->setIsShowLog(Z)V

    return-void
.end method
