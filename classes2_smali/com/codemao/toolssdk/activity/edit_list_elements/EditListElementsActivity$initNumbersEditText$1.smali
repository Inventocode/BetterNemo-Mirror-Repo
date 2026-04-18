.class public final Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initNumbersEditText$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "EditListElementsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->initNumbersEditText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initNumbersEditText$1;->this$0:Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;

    .line 317
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 4

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_16

    .line 322
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initNumbersEditText$1;->this$0:Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->access$setStillShowAddBtn$p(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;Z)V

    .line 323
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initNumbersEditText$1;->this$0:Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->access$notifyAddDeleteBtn(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V

    goto :goto_23

    .line 325
    :cond_16
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initNumbersEditText$1;->this$0:Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->access$getStillShowAddBtn$p(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 326
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initNumbersEditText$1;->this$0:Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->access$hideAddDeleteBtn(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V

    :cond_23
    :goto_23
    return-void
.end method
