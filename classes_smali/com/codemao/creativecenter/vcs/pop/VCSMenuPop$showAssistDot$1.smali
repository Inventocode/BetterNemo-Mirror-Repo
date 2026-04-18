.class final Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop$showAssistDot$1;
.super Ljava/lang/Object;
.source "VCSMenuPop.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop;->showAssistDot(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $isShow:Z

.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop;Z)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop$showAssistDot$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop;

    iput-boolean p2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop$showAssistDot$1;->$isShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop$showAssistDot$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop;

    .line 134
    sget v1, Lcom/codemao/creativecenter/R$id;->v_assist_indicator:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById<View>(R.id.v_assist_indicator)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop$showAssistDot$1;->$isShow:Z

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    goto :goto_15

    :cond_13
    const/16 v1, 0x8

    .line 135
    :goto_15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
