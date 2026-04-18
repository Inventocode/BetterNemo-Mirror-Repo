.class final Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView$setOnClickListener$1;
.super Ljava/lang/Object;
.source "CreativeExtensionCategoryItemView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $l:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;Landroid/view/View$OnClickListener;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView$setOnClickListener$1;->this$0:Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView$setOnClickListener$1;->$l:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 96
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView$setOnClickListener$1;->$l:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView$setOnClickListener$1;->this$0:Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_9
    return-void
.end method
