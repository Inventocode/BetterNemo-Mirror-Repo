.class Lcom/codemao/creativecenter/adpater/CurrentAdapters$2;
.super Ljava/lang/Object;
.source "CurrentAdapters.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/adpater/CurrentAdapters;->quite()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/adpater/CurrentAdapters;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/CurrentAdapters;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters$2;->this$0:Lcom/codemao/creativecenter/adpater/CurrentAdapters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 196
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters$2;->this$0:Lcom/codemao/creativecenter/adpater/CurrentAdapters;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->access$000(Lcom/codemao/creativecenter/adpater/CurrentAdapters;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->access$100(Lcom/codemao/creativecenter/adpater/CurrentAdapters;Landroid/animation/ValueAnimator;Landroid/view/View;)V

    .line 197
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1e

    .line 198
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters$2;->this$0:Lcom/codemao/creativecenter/adpater/CurrentAdapters;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->access$200(Lcom/codemao/creativecenter/adpater/CurrentAdapters;)Lcom/codemao/creativecenter/pop/CurrentActorsPop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_1e
    return-void
.end method
