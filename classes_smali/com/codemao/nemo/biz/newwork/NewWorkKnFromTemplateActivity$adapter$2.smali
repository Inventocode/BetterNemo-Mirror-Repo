.class final Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$adapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NewWorkKnFromTemplateActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$adapter$2;->this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;
    .registers 6

    .line 57
    new-instance v0, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/ljwx/recyclerview/itemtype/ItemType;

    iget-object v3, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$adapter$2;->this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;

    invoke-static {v3}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->access$getItemType(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;)Lcom/ljwx/recyclerview/itemtype/ItemTypeBinding;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$adapter$2;->this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;

    invoke-static {v3}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->access$getTitleType(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;)Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;-><init>([Lcom/ljwx/recyclerview/itemtype/ItemType;Landroidx/recyclerview/widget/AsyncDifferConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 56
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$adapter$2;->invoke()Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;

    move-result-object v0

    return-object v0
.end method
