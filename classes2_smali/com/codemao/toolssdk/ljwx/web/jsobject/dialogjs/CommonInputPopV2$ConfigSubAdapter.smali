.class public final Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;
.super Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;
.source "CommonInputPopV2.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigSubAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter<",
        "Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommonInputPopV2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonInputPopV2.kt\ncom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,845:1\n1860#2,3:846\n1860#2,3:849\n*S KotlinDebug\n*F\n+ 1 CommonInputPopV2.kt\ncom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter\n*L\n777#1:846,3\n787#1:849,3\n*E\n"
.end annotation


# instance fields
.field private final adapterList:Ljava/util/List;
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

.field private final parentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/TextConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$fT8eqPM9ztmcpB_KBsKkdnCT0RI(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;ILandroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;->onBindData$lambda$2(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/TextConfig;",
            ">;",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;",
            ">;",
            "Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commonInput"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 761
    sget v1, Lcom/codemao/toolssdk/R$layout;->toolsdk_item_common_input_type_sub:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 758
    invoke-direct {p0, p1, p3, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[I)V

    .line 753
    iput-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;->context:Landroid/content/Context;

    .line 754
    iput-object p2, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;->parentList:Ljava/util/List;

    .line 755
    iput-object p3, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;->adapterList:Ljava/util/List;

    .line 756
    iput-object p4, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;->commonInput:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    return-void
.end method

.method private static final onBindData$lambda$2(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;ILandroid/view/View;)V
    .registers 8

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$item"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 777
    iget-object p3, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;->adapterList:Ljava/util/List;

    .line 1861
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_12
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_23

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_23
    check-cast v2, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;

    if-ne v1, p2, :cond_31

    .line 779
    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->isSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->setSelected(Z)V

    goto :goto_34

    .line 781
    :cond_31
    invoke-virtual {v2, v0}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->setSelected(Z)V

    :goto_34
    move v1, v3

    goto :goto_12

    .line 784
    :cond_36
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 785
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_44

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_45

    :cond_44
    const/4 p1, 0x0

    .line 787
    :goto_45
    iget-object p2, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;->parentList:Ljava/util/List;

    .line 1861
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    :goto_4c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    if-gez p3, :cond_5d

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_5d
    check-cast v1, Lcom/codemao/toolssdk/model/dsbridge/TextConfig;

    .line 788
    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/TextConfig;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_66

    move v0, p3

    :cond_66
    move p3, v2

    goto :goto_4c

    .line 792
    :cond_68
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subConfig点击,config:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",sub:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dVariable(Ljava/lang/String;)V

    .line 793
    iget-object p0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;->commonInput:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    invoke-static {p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->access$getCurrentTabIndex$p(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)I

    move-result p2

    invoke-static {p0, p2, v0, p1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->access$notifyTypeSelect(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;IILjava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method protected onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;)V
    .registers 11

    const-string v0, "item"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    .line 769
    sget v1, Lcom/codemao/toolssdk/R$id;->desc:I

    invoke-virtual {p1, v1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_12

    :cond_11
    move-object v1, v0

    .line 770
    :goto_12
    invoke-virtual {p3}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_27

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_22

    const/4 v2, 0x1

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    if-ne v2, v4, :cond_27

    const/4 v2, 0x1

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    :goto_28
    if-eqz v2, :cond_34

    if-nez v1, :cond_2d

    goto :goto_34

    .line 771
    :cond_2d
    invoke-virtual {p3}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_34
    :goto_34
    if-eqz p1, :cond_3d

    .line 773
    sget v2, Lcom/codemao/toolssdk/R$id;->state:I

    invoke-virtual {p1, v2}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    goto :goto_3e

    :cond_3d
    move-object v2, v0

    :goto_3e
    if-nez v2, :cond_41

    goto :goto_5f

    .line 774
    :cond_41
    invoke-virtual {p3}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->amountLimited()Z

    move-result v5

    if-nez v5, :cond_5b

    invoke-virtual {p3}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->isEnable()Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-virtual {p3}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->getEnable()Ljava/lang/Boolean;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5b

    const/4 v5, 0x1

    goto :goto_5c

    :cond_5b
    const/4 v5, 0x0

    :goto_5c
    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    :goto_5f
    if-nez v2, :cond_62

    goto :goto_6c

    .line 775
    :cond_62
    invoke-virtual {p3}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->isSelected()Z

    move-result v5

    if-ne v5, v4, :cond_69

    const/4 v3, 0x1

    :cond_69
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    :goto_6c
    if-eqz v2, :cond_76

    .line 776
    new-instance v3, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p3, p2}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_76
    if-eqz p1, :cond_81

    .line 795
    sget p2, Lcom/codemao/toolssdk/R$id;->limit_desc:I

    invoke-virtual {p1, p2}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    :cond_81
    if-nez v0, :cond_84

    goto :goto_8b

    .line 796
    :cond_84
    invoke-virtual {p3}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->getAmountTips()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 797
    :goto_8b
    invoke-virtual {p3}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_e9

    invoke-virtual {p3}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->getEnable()Ljava/lang/Boolean;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e9

    .line 798
    invoke-virtual {p3}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->amountLimited()Z

    move-result p1

    if-eqz p1, :cond_c6

    if-eqz v0, :cond_b4

    .line 799
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/codemao/toolssdk/R$color;->toolsdk_color_n0_5:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b4
    if-eqz v1, :cond_134

    .line 800
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/codemao/toolssdk/R$color;->toolsdk_color_t1:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_134

    :cond_c6
    if-eqz v0, :cond_d7

    .line 802
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/codemao/toolssdk/R$color;->toolsdk_color_t1:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_d7
    if-eqz v1, :cond_134

    .line 803
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/codemao/toolssdk/R$color;->toolsdk_color_t2:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_134

    .line 806
    :cond_e9
    invoke-virtual {p3}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->amountLimited()Z

    move-result p1

    if-eqz p1, :cond_112

    if-eqz v0, :cond_100

    .line 807
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/codemao/toolssdk/R$color;->toolsdk_color_n0_5:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_100
    if-eqz v1, :cond_134

    .line 808
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/codemao/toolssdk/R$color;->toolsdk_color_t1:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_134

    :cond_112
    if-eqz v0, :cond_123

    .line 810
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/codemao/toolssdk/R$color;->toolsdk_color_t0_5:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_123
    if-eqz v1, :cond_134

    .line 811
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/codemao/toolssdk/R$color;->toolsdk_color_t1:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_134
    :goto_134
    return-void
.end method

.method public bridge synthetic onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILjava/lang/Object;)V
    .registers 4

    .line 752
    check-cast p3, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;

    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;->onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;)V

    return-void
.end method
