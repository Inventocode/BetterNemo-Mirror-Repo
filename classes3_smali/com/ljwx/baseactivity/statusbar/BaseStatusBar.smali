.class public Lcom/ljwx/baseactivity/statusbar/BaseStatusBar;
.super Ljava/lang/Object;
.source "BaseStatusBar.kt"

# interfaces
.implements Lcom/ljwx/baseapp/view/IViewStatusBar;


# instance fields
.field private final statusBar:Lcom/gyf/immersionbar/ImmersionBar;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p1}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    const-string v0, "with(activity)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ljwx/baseactivity/statusbar/BaseStatusBar;->statusBar:Lcom/gyf/immersionbar/ImmersionBar;

    return-void
.end method


# virtual methods
.method public setCustomStatusBar(IZ)Lcom/ljwx/baseapp/view/IViewStatusBar;
    .registers 5

    .line 55
    iget-object v0, p0, Lcom/ljwx/baseactivity/statusbar/BaseStatusBar;->statusBar:Lcom/gyf/immersionbar/ImmersionBar;

    .line 56
    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->reset()Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    const/4 v1, 0x1

    .line 57
    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->fitsSystemWindows(Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object v0

    .line 58
    invoke-virtual {v0, p1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarColor(I)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    .line 59
    invoke-virtual {p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarDarkFont(Z)Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    return-object p0
.end method

.method public transparent(Z)V
    .registers 2

    if-eqz p1, :cond_f

    .line 46
    iget-object p1, p0, Lcom/ljwx/baseactivity/statusbar/BaseStatusBar;->statusBar:Lcom/gyf/immersionbar/ImmersionBar;

    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->reset()Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->transparentStatusBar()Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    :cond_f
    return-void
.end method
