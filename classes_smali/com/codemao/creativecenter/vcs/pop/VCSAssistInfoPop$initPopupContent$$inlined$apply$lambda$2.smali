.class final Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$$inlined$apply$lambda$2;
.super Ljava/lang/Object;
.source "VCSAssistInfoPop.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->initPopupContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$$inlined$apply$lambda$2;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    .line 148
    sget-object p1, Lcom/codemao/creativecenter/vcs/utils/VCSAssistCodeHelper;->INSTANCE:Lcom/codemao/creativecenter/vcs/utils/VCSAssistCodeHelper;

    .line 149
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$$inlined$apply$lambda$2;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getAssistCode$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Ljava/lang/String;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$$inlined$apply$lambda$2;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {v1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getMApiStore$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/api/AssistApiStore;

    move-result-object v1

    .line 151
    iget-object v2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$$inlined$apply$lambda$2;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-virtual {v2}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->getOriginBcm()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v2

    iget-object v2, v2, Lcom/codemao/creativestore/bean/WorksEvent;->workId:Ljava/lang/String;

    const-string v3, "originBcm.workId"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 148
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/codemao/creativecenter/vcs/utils/VCSAssistCodeHelper;->onShareEvent(Ljava/lang/String;Lcom/codemao/creativecenter/vcs/api/AssistApiStore;Ljava/lang/String;I)V

    return-void
.end method
