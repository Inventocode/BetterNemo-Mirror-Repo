.class Lcom/codemao/creativecenter/adpater/CurrentAdapters$1;
.super Ljava/lang/Object;
.source "CurrentAdapters.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/adpater/CurrentAdapters;->init(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V
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

    .line 146
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters$1;->this$0:Lcom/codemao/creativecenter/adpater/CurrentAdapters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 149
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters$1;->this$0:Lcom/codemao/creativecenter/adpater/CurrentAdapters;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->access$000(Lcom/codemao/creativecenter/adpater/CurrentAdapters;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->access$100(Lcom/codemao/creativecenter/adpater/CurrentAdapters;Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-void
.end method
