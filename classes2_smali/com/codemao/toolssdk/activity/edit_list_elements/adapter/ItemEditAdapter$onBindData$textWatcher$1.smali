.class public final Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$onBindData$textWatcher$1;
.super Ljava/lang/Object;
.source "ItemEditAdapter.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILcom/codemao/toolssdk/activity/edit_list_elements/adapter/EditItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $item:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/EditItem;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/EditItem;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$onBindData$textWatcher$1;->$item:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/EditItem;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$onBindData$textWatcher$1;->$item:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/EditItem;

    if-nez v0, :cond_5

    goto :goto_c

    :cond_5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/EditItem;->setEditStr(Ljava/lang/String;)V

    :goto_c
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
