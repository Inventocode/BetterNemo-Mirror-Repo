.class public final Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "DefaultVCSBcmActivity.kt"

# interfaces
.implements Lcom/codemao/creativecenter/vcs/listener/IBcmProgressPopListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $createData$inlined:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$$inlined$let$lambda$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;

    iput-object p2, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$$inlined$let$lambda$1;->$createData$inlined:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;Ljava/lang/String;)V
    .registers 4

    const-string v0, "pop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "btnStr"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "取消"

    .line 282
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 283
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$$inlined$let$lambda$1;->$createData$inlined:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->cancelUploadBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    .line 284
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$$inlined$let$lambda$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;->access$getMSyncWorkProgressPop$p(Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object p1

    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    goto :goto_2d

    .line 286
    :cond_26
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$$inlined$let$lambda$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;->onClickSyncUpload()V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public onClose(Ljava/lang/String;)V
    .registers 3

    const-string v0, "btnStr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$$inlined$let$lambda$1;->$createData$inlined:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->cancelUploadBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method
