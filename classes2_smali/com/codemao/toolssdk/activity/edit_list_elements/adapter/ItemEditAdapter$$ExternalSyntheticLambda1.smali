.class public final synthetic Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

.field public final synthetic f$1:Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;Landroid/widget/EditText;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    iput-object p2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    iput-object p3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$$ExternalSyntheticLambda1;->f$2:Landroid/widget/EditText;

    iput p4, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$$ExternalSyntheticLambda1;->f$3:I

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 9

    iget-object v0, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    iget-object v2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$$ExternalSyntheticLambda1;->f$2:Landroid/widget/EditText;

    iget v3, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$$ExternalSyntheticLambda1;->f$3:I

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->$r8$lambda$fj9HeIKcAuplZgN72hlmkQYz2gI(Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;Landroid/widget/EditText;ILandroid/view/View;Z)V

    return-void
.end method
