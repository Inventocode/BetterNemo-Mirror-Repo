.class Lcom/codemao/creativecenter/customview/CmSideBar$2;
.super Ljava/lang/Object;
.source "CmSideBar.java"

# interfaces
.implements Lcom/codemao/creativecenter/customview/CmSwitchView$OnStatusChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CmSideBar;->setSidebarVM(Lcom/codemao/creativecenter/vm/SidebarVM;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CmSideBar;Lcom/codemao/creativecenter/vm/SidebarVM;)V
    .registers 3

    .line 114
    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CmSideBar$2;->val$sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkCanClickVideo()Z
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBar$2;->val$sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    iget-object v0, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->mCallback:Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;

    invoke-interface {v0}, Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;->checkCanClickVideo()Z

    move-result v0

    return v0
.end method

.method public onChange(I)V
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmSideBar$2;->val$sidebarVM:Lcom/codemao/creativecenter/vm/SidebarVM;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/vm/SidebarVM;->changeStatus(I)V

    return-void
.end method
