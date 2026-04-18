.class public final Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$recyclerCompatPad$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "NewWorkKnFromTemplateActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->recyclerCompatPad(Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $adapter:Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;

.field final synthetic this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;


# direct methods
.method constructor <init>(Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$recyclerCompatPad$1;->$adapter:Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;

    iput-object p2, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$recyclerCompatPad$1;->this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;

    .line 160
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$recyclerCompatPad$1;->$adapter:Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;

    invoke-virtual {v0, p1}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->getDataItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 163
    instance-of p1, p1, Ljava/lang/String;

    if-eqz p1, :cond_11

    .line 164
    iget-object p1, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$recyclerCompatPad$1;->this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->access$getMSpanNum$p(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;)I

    move-result p1

    goto :goto_12

    :cond_11
    const/4 p1, 0x1

    :goto_12
    return p1
.end method
