.class Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter$1;
.super Ljava/lang/Object;
.source "FolderListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;->convert(Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;ILcom/codemao/toolssdk/image_selector/bean/Folder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;I)V
    .registers 3

    .line 61
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter$1;->this$0:Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;

    iput p2, p0, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 64
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter$1;->this$0:Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;

    iget v0, p0, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter$1;->val$position:I

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/image_selector/adapter/FolderListAdapter;->setSelectIndex(I)V

    return-void
.end method
