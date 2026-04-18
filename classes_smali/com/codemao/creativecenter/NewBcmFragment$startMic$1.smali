.class public final Lcom/codemao/creativecenter/NewBcmFragment$startMic$1;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$PermissionCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment;->startMic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/NewBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/NewBcmFragment;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2954
    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$startMic$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAgree()V
    .registers 3

    .line 2956
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$startMic$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getMic$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/utils/CreativeMicUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/CreativeMicUtils;->prepareRecording()V

    .line 2957
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$startMic$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getMic$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/utils/CreativeMicUtils;

    move-result-object v0

    const v1, 0x3e99999a  # 0.3f

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeMicUtils;->startRecording(F)V

    return-void
.end method

.method public onDenyRequest()V
    .registers 3

    .line 2965
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$startMic$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getSidebarVM$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/vm/SidebarVM;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$startMic$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getSidebarVM$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/vm/SidebarVM;

    move-result-object v0

    if-nez v0, :cond_13

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_13
    iget-object v0, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$startMic$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getSidebarVM$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/vm/SidebarVM;

    move-result-object v0

    if-nez v0, :cond_22

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_22
    iget-object v0, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_2e

    goto :goto_39

    :cond_2e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_39

    .line 2966
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$startMic$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->runOrStop()V

    .line 2969
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$startMic$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2970
    sget v1, Lcom/codemao/creativecenter/R$string;->creative_permission_cannot_running:I

    .line 2968
    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    return-void
.end method

.method public onDenyRequestAndDontShow()V
    .registers 2

    .line 2961
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$startMic$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->runOrStop()V

    return-void
.end method
