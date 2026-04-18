.class Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ImgSelFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field halfSpacing:I

.field spacing:I

.field final synthetic this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)V
    .registers 3

    .line 129
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$1;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 130
    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$000(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x40400000  # 3.0f

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$1;->spacing:I

    shr-int/lit8 p1, p1, 0x1

    .line 131
    iput p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$1;->halfSpacing:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 135
    iget p2, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$1;->halfSpacing:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 136
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 137
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 138
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
