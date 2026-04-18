.class public final Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initRv$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "UserAvatarChooseActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->initRv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initRv$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    .line 217
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 3

    if-ltz p1, :cond_2a

    .line 219
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initRv$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$getMDatas(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_f

    goto :goto_2a

    .line 223
    :cond_f
    iget-object v0, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initRv$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {v0}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$getMDatas(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;

    invoke-interface {p1}, Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;->getItemType()I

    move-result p1

    if-nez p1, :cond_23

    const/4 p1, 0x1

    return p1

    .line 227
    :cond_23
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initRv$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$getMSpanNum(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)I

    move-result p1

    return p1

    .line 220
    :cond_2a
    :goto_2a
    iget-object p1, p0, Lcom/codemao/nemo/setting/UserAvatarChooseActivity$initRv$1;->this$0:Lcom/codemao/nemo/setting/UserAvatarChooseActivity;

    invoke-static {p1}, Lcom/codemao/nemo/setting/UserAvatarChooseActivity;->access$getMSpanNum(Lcom/codemao/nemo/setting/UserAvatarChooseActivity;)I

    move-result p1

    return p1
.end method
