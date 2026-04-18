.class public final Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performRecover$1;
.super Ljava/lang/Object;
.source "VCSAssistInfoPop.kt"

# interfaces
.implements Lcom/codemao/creativecenter/vcs/listener/IBcmProgressPopListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->performRecover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
            ")V"
        }
    .end annotation

    .line 337
    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performRecover$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    iput-object p2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performRecover$1;->$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

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

    .line 344
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 345
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performRecover$1;->$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->cancelDownloadBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    .line 346
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performRecover$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getMRecoverProgressPop$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object p1

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 347
    :cond_23
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performRecover$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$setMRecoverProgressPop$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;)V

    goto :goto_44

    .line 349
    :cond_2a
    iget-object p2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performRecover$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p2}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getMRecoverProgressPop$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object p2

    if-eqz p2, :cond_38

    const-string/jumbo v0, "正在恢复最初作品版本"

    invoke-virtual {p2, v0, p1}, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->setupTxt(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_38
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performRecover$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    iget-object p2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performRecover$1;->$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    const-string v0, "createData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$download(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    :goto_44
    return-void
.end method

.method public onClose(Ljava/lang/String;)V
    .registers 3

    const-string v0, "btnStr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$performRecover$1;->$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->cancelDownloadBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method
