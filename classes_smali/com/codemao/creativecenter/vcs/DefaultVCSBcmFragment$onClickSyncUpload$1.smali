.class public final Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;
.super Ljava/lang/Object;
.source "DefaultVCSBcmActivity.kt"

# interfaces
.implements Lcom/codemao/creativestore/listener/SaveBcmCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;->onClickSyncUpload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultVCSBcmActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultVCSBcmActivity.kt\ncom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1\n*L\n1#1,518:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .registers 3

    .line 392
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 8

    .line 261
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 264
    :cond_7
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->isAssistBcm()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "assist_works"

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getCustomBcmByUuid(Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object p1

    goto :goto_1a

    .line 267
    :cond_16
    invoke-static {p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getBcmByUuid(Ljava/lang/String;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object p1

    :goto_1a
    move-object v2, p1

    .line 269
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;->access$getMSyncWorkProgressPop$p(Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object p1

    if-nez p1, :cond_47

    .line 270
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 271
    sget-object v1, Lcom/codemao/creativecenter/vcs/utils/VCSProgressPopManager;->INSTANCE:Lcom/codemao/creativecenter/vcs/utils/VCSProgressPopManager;

    const-string v3, "it"

    .line 272
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    new-instance v3, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$$inlined$let$lambda$1;

    invoke-direct {v3, p0, v2}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$$inlined$let$lambda$1;-><init>(Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    const-string/jumbo v4, "正在同步作品给求助者"

    const-string/jumbo v5, "取消"

    .line 271
    invoke-virtual {v1, v0, v4, v5, v3}, Lcom/codemao/creativecenter/vcs/utils/VCSProgressPopManager;->showPop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/vcs/listener/IBcmProgressPopListener;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object v0

    goto :goto_43

    :cond_42
    const/4 v0, 0x0

    .line 270
    :goto_43
    invoke-static {p1, v0}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;->access$setMSyncWorkProgressPop$p(Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;)V

    goto :goto_52

    .line 293
    :cond_47
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;->access$getMSyncWorkProgressPop$p(Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object p1

    if-eqz p1, :cond_52

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_52
    :goto_52
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 302
    new-instance v5, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;

    invoke-direct {v5, p0}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;-><init>(Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;)V

    .line 296
    invoke-static/range {v0 .. v5}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadBcm(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZILcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V

    return-void
.end method
