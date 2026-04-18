.class public final Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigAdapter;
.super Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;
.source "CommonInputPopV2.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter<",
        "Lcom/codemao/toolssdk/model/dsbridge/TextConfig;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommonInputPopV2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonInputPopV2.kt\ncom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,845:1\n1851#2,2:846\n1851#2,2:848\n1851#2,2:850\n*S KotlinDebug\n*F\n+ 1 CommonInputPopV2.kt\ncom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigAdapter\n*L\n729#1:846,2\n734#1:848,2\n739#1:850,2\n*E\n"
.end annotation


# instance fields
.field private final adapterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/TextConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final adapterSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private final commonInput:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

.field private final context:Landroid/content/Context;

.field private final subAdapter:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;


# direct methods
.method public static synthetic $r8$lambda$XumTwUzgjeUoLIvS4tSrfbXEf7M(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigAdapter;Lcom/codemao/toolssdk/model/dsbridge/TextConfig;ILandroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigAdapter;->onBindData$lambda$3(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigAdapter;Lcom/codemao/toolssdk/model/dsbridge/TextConfig;ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;Ljava/util/List;Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/TextConfig;",
            ">;",
            "Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;",
            ">;",
            "Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterSubList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commonInput"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 714
    sget v1, Lcom/codemao/toolssdk/R$layout;->toolsdk_item_common_input_type:I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[I)V

    .line 708
    iput-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigAdapter;->context:Landroid/content/Context;

    .line 709
    iput-object p2, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigAdapter;->adapterList:Ljava/util/List;

    .line 710
    iput-object p3, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigAdapter;->subAdapter:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;

    .line 711
    iput-object p4, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigAdapter;->adapterSubList:Ljava/util/List;

    .line 712
    iput-object p5, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigAdapter;->commonInput:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    return-void
.end method

.method private static final onBindData$lambda$3(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigAdapter;Lcom/codemao/toolssdk/model/dsbridge/TextConfig;ILandroid/view/View;)V
    .registers 6

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    iget-object p3, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigAdapter;->adapterList:Ljava/util/List;

    .line 1851
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/model/dsbridge/TextConfig;

    .line 730
    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/TextConfig;->setSelected(Z)V

    goto :goto_b

    :cond_1c
    const/4 p3, 0x1

    if-nez p1, :cond_20

    goto :goto_23

    .line 732
    :cond_20
    invoke-virtual {p1, p3}, Lcom/codemao/toolssdk/model/dsbridge/TextConfig;->setSelected(Z)V

    :goto_23
    if-eqz p1, :cond_2d

    .line 733
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/TextConfig;->isGlobalVariable()Z

    move-result p1

    if-ne p1, p3, :cond_2d

    const/4 p1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x0

    :goto_2e
    if-eqz p1, :cond_49

    .line 734
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigAdapter;->adapterSubList:Ljava/util/List;

    .line 1851
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;

    .line 735
    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->setSelected(Z)V

    .line 736
    invoke-virtual {v0, p3}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->setEnable(Z)V

    goto :goto_36

    .line 739
    :cond_49
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigAdapter;->adapterSubList:Ljava/util/List;

    .line 1851
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_62

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;

    .line 740
    invoke-virtual {p3, v1}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->setSelected(Z)V

    .line 741
    invoke-virtual {p3, v1}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->setEnable(Z)V

    goto :goto_4f

    .line 744
    :cond_62
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigAdapter;->subAdapter:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;

    if-eqz p1, :cond_69

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 745
    :cond_69
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 746
    iget-object p0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigAdapter;->commonInput:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    invoke-static {p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->access$getCurrentTabIndex$p(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)I

    move-result p1

    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->access$notifyTypeSelect(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;IILjava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method protected onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILcom/codemao/toolssdk/model/dsbridge/TextConfig;)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_17

    .line 717
    invoke-virtual {p3}, Lcom/codemao/toolssdk/model/dsbridge/TextConfig;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    if-ne v2, v1, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    if-eqz v2, :cond_2c

    if-eqz p1, :cond_25

    .line 718
    sget v2, Lcom/codemao/toolssdk/R$id;->textV:I

    invoke-virtual {p3}, Lcom/codemao/toolssdk/model/dsbridge/TextConfig;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->setText(ILjava/lang/String;)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    :cond_25
    if-eqz p1, :cond_2c

    .line 719
    sget v2, Lcom/codemao/toolssdk/R$id;->textV:I

    invoke-virtual {p1, v2, v1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->setVisible(IZ)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    :cond_2c
    const/4 v2, 0x0

    if-eqz p1, :cond_38

    .line 721
    sget v3, Lcom/codemao/toolssdk/R$id;->imageV:I

    invoke-virtual {p1, v3}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    goto :goto_39

    :cond_38
    move-object v3, v2

    :goto_39
    if-nez v3, :cond_3c

    return-void

    .line 722
    :cond_3c
    iget-object v4, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    if-eqz p3, :cond_48

    invoke-virtual {p3}, Lcom/codemao/toolssdk/model/dsbridge/TextConfig;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    :cond_48
    invoke-virtual {v4, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    .line 723
    sget v4, Lcom/codemao/toolssdk/R$drawable;->toolsdk_icn_variable_character:I

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    .line 724
    invoke-virtual {v2, v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    .line 725
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 726
    sget v2, Lcom/codemao/toolssdk/R$id;->layout:I

    invoke-virtual {p1, v2}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_66

    goto :goto_72

    :cond_66
    if-eqz p3, :cond_6f

    .line 727
    invoke-virtual {p3}, Lcom/codemao/toolssdk/model/dsbridge/TextConfig;->isSelected()Z

    move-result v2

    if-ne v2, v1, :cond_6f

    const/4 v0, 0x1

    :cond_6f
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    :goto_72
    if-eqz p1, :cond_7c

    .line 728
    new-instance v0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3, p2}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigAdapter;Lcom/codemao/toolssdk/model/dsbridge/TextConfig;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7c
    return-void
.end method

.method public bridge synthetic onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILjava/lang/Object;)V
    .registers 4

    .line 707
    check-cast p3, Lcom/codemao/toolssdk/model/dsbridge/TextConfig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigAdapter;->onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILcom/codemao/toolssdk/model/dsbridge/TextConfig;)V

    return-void
.end method
