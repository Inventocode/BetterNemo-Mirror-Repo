.class Lcom/codemao/creativecenter/utils/NotchScreenManager$1;
.super Ljava/lang/Object;
.source "NotchScreenManager.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/INotchScreen;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/NotchScreenManager;->getNotchScreen()Lcom/codemao/creativecenter/utils/INotchScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/utils/NotchScreenManager;)V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotchRect(Landroid/app/Activity;Lcom/codemao/creativecenter/utils/INotchScreen$NotchSizeCallback;)V
    .registers 7

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    new-instance v1, Landroid/graphics/Rect;

    invoke-static {p1}, Lcn/codemao/android/sketch/utils/ScreenUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    invoke-static {p1}, Lcn/codemao/android/sketch/utils/ScreenUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-interface {p2, v0}, Lcom/codemao/creativecenter/utils/INotchScreen$NotchSizeCallback;->onResult(Ljava/util/List;)V

    return-void
.end method

.method public hasNotch(Landroid/app/Activity;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
