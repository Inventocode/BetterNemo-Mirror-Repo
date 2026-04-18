.class public final Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$upload$1;
.super Ljava/lang/Object;
.source "VCSAssistInfoPop.kt"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->upload(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 420
    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$upload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needUpdate(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 4

    .line 430
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$upload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getProgressPop$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    move-result-object p1

    if-eqz p1, :cond_10

    const-string v0, "上传失败"

    const-string/jumbo v1, "重试"

    invoke-virtual {p1, v0, v1}, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->setupTxt(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_10
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$upload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$setCurAssistMode$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Z)V

    .line 432
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$upload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$setupMode(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V

    return-void
.end method

.method public onIlleagal()V
    .registers 1

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 423
    iget-object p2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$upload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p2}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$isCancelUpload$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Z

    move-result p2

    if-nez p2, :cond_1a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_f

    goto :goto_1a

    .line 426
    :cond_f
    iget-object p2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$upload$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    if-nez p1, :cond_16

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_16
    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$requestToggleMode(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;Ljava/lang/String;Z)V

    :cond_1a
    :goto_1a
    return-void
.end method
