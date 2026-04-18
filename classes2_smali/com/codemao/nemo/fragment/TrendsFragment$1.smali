.class Lcom/codemao/nemo/fragment/TrendsFragment$1;
.super Ljava/lang/Object;
.source "TrendsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/TrendsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/TrendsFragment;)V
    .registers 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/String;

    const-string v1, "动态页-去发现按钮"

    .line 82
    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v1, "推荐"

    invoke-static {p1, v1}, Lcom/codemao/nemo/event/MainActivityTabChangeEvent;->obtain(ILjava/lang/String;)Lcom/codemao/nemo/event/MainActivityTabChangeEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
