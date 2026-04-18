.class final Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$commonStep2InitView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NewWorkKnFromTemplateActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->commonStep2InitView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/ljwx/recyclerview/holder/ItemHolder;",
        "Lcom/codemao/nemo/bean/KnTemplateListItem;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$commonStep2InitView$2;->this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 87
    check-cast p1, Lcom/ljwx/recyclerview/holder/ItemHolder;

    check-cast p2, Lcom/codemao/nemo/bean/KnTemplateListItem;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$commonStep2InitView$2;->invoke(Lcom/ljwx/recyclerview/holder/ItemHolder;Lcom/codemao/nemo/bean/KnTemplateListItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/ljwx/recyclerview/holder/ItemHolder;Lcom/codemao/nemo/bean/KnTemplateListItem;)V
    .registers 10

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "item"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/KnTemplateListItem;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    iget-object p1, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$commonStep2InitView$2;->this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;

    .line 89
    sget-object v0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity;->Companion:Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;

    .line 92
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v6, 0x1

    const-string v4, "KN"

    const-string v5, "normal"

    move-object v1, p1

    .line 89
    invoke-virtual/range {v0 .. v6}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoActivity$Companion;->startActivityTemplate(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 97
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_22
    return-void
.end method
