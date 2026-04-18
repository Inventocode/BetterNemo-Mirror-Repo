.class Lcom/codemao/creativecenter/customview/CmSideBarForFragment$4;
.super Ljava/lang/Object;
.source "CmSideBarForFragment.java"

# interfaces
.implements Lcom/codemao/creativecenter/customview/CmSwitchView$OnStatusChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/CmSideBarForFragment;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment$4;->this$0:Lcom/codemao/creativecenter/customview/CmSideBarForFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkCanClickVideo()Z
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment$4;->this$0:Lcom/codemao/creativecenter/customview/CmSideBarForFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->access$100(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)Lcom/codemao/creativecenter/vm/SidebarVM;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->mCallback:Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;

    invoke-interface {v0}, Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;->checkCanClickVideo()Z

    move-result v0

    return v0
.end method

.method public onChange(I)V
    .registers 3

    .line 222
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment$4;->this$0:Lcom/codemao/creativecenter/customview/CmSideBarForFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->access$100(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)Lcom/codemao/creativecenter/vm/SidebarVM;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/vm/SidebarVM;->changeStatus(I)V

    return-void
.end method
