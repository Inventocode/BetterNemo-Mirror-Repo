.class Lcom/codemao/nemo/view/OpenLessonRelativeLayout$2;
.super Ljava/lang/Object;
.source "OpenLessonRelativeLayout.java"

# interfaces
.implements Lcom/codemao/nemo/view/OpenLessonRVAdapter$OnLessonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$2;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$2;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    invoke-static {v0, p1}, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->access$902(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;I)I

    .line 126
    iget-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$2;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->access$700(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)Lcom/codemao/nemo/view/CarouselLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getCenterItemPosition()I

    move-result v0

    if-ne v0, p1, :cond_1b

    .line 127
    iget-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$2;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->access$1000(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)Lcom/codemao/nemo/view/OpenLessonRVAdapter$OnLessonClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/codemao/nemo/view/OpenLessonRVAdapter$OnLessonClickListener;->onClick(I)V

    goto :goto_24

    .line 129
    :cond_1b
    iget-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRelativeLayout$2;->this$0:Lcom/codemao/nemo/view/OpenLessonRelativeLayout;

    invoke-static {v0}, Lcom/codemao/nemo/view/OpenLessonRelativeLayout;->access$1100(Lcom/codemao/nemo/view/OpenLessonRelativeLayout;)Lcom/codemao/nemo/view/MyRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :goto_24
    return-void
.end method
