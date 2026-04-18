.class Lcom/codemao/creativecenter/adpater/CurrentAdapters$3;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "CurrentAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/adpater/CurrentAdapters;->onClick(Landroid/view/View;)V
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

    .line 244
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters$3;->this$0:Lcom/codemao/creativecenter/adpater/CurrentAdapters;

    invoke-direct {p0}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .registers 2

    .line 247
    invoke-super {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;->onAnimationEnd(Landroid/view/View;)V

    .line 248
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters$3;->this$0:Lcom/codemao/creativecenter/adpater/CurrentAdapters;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->quite()V

    return-void
.end method
