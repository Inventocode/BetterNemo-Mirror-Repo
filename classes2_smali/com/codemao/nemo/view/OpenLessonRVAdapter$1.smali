.class Lcom/codemao/nemo/view/OpenLessonRVAdapter$1;
.super Ljava/lang/Object;
.source "OpenLessonRVAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/OpenLessonRVAdapter;->onBindViewHolder(Lcom/codemao/nemo/view/OpenLessonRVAdapter$MyHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/OpenLessonRVAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/OpenLessonRVAdapter;I)V
    .registers 3

    .line 73
    iput-object p1, p0, Lcom/codemao/nemo/view/OpenLessonRVAdapter$1;->this$0:Lcom/codemao/nemo/view/OpenLessonRVAdapter;

    iput p2, p0, Lcom/codemao/nemo/view/OpenLessonRVAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 77
    iget-object p1, p0, Lcom/codemao/nemo/view/OpenLessonRVAdapter$1;->this$0:Lcom/codemao/nemo/view/OpenLessonRVAdapter;

    invoke-static {p1}, Lcom/codemao/nemo/view/OpenLessonRVAdapter;->access$000(Lcom/codemao/nemo/view/OpenLessonRVAdapter;)Lcom/codemao/nemo/view/OpenLessonRVAdapter$OnLessonClickListener;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/view/OpenLessonRVAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/codemao/nemo/view/OpenLessonRVAdapter$OnLessonClickListener;->onClick(I)V

    return-void
.end method
