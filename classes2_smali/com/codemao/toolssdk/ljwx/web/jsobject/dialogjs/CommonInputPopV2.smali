.class public final Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "CommonInputPopV2.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$Companion;,
        Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$BtnClickListener;,
        Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;,
        Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigAdapter;,
        Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommonInputPopV2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonInputPopV2.kt\ncom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,845:1\n1851#2,2:846\n1860#2,3:848\n1851#2,2:851\n1851#2,2:853\n1851#2,2:855\n*S KotlinDebug\n*F\n+ 1 CommonInputPopV2.kt\ncom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2\n*L\n234#1:846,2\n492#1:848,3\n511#1:851,2\n192#1:853,2\n198#1:855,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$Companion;

.field private static hasCallOpened:Z

.field private static lastMills:J


# instance fields
.field private actorIconUrl:Ljava/lang/String;

.field private blur:Landroid/widget/ImageView;

.field private clickListener:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$BtnClickListener;

.field private closeImage:Landroid/widget/ImageView;

.field private commitProgressLoading:Landroid/widget/ProgressBar;

.field private commitTextV:Landroid/widget/TextView;

.field private configAdapter:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigAdapter;

.field private configList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/TextConfig;",
            ">;"
        }
    .end annotation
.end field

.field private configListSub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private configSubAdapter:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;

.field private contentText:Ljava/lang/String;

.field private currentTabIndex:I

.field private errorText:Ljava/lang/String;

.field private errorTextV:Landroid/widget/TextView;

.field private guideline:Landroidx/constraintlayout/widget/Guideline;

.field private hideConfigUI:Z

.field private hintText:Ljava/lang/String;

.field private inputEditText:Landroid/widget/EditText;

.field private isRequestMaxLength:Z

.field private keyboardHeight:I

.field private maxLength:I

.field private normalModeHeight:I

.field private option:Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;

.field private preCurrentIndex:I

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private recyclerViewSub:Landroidx/recyclerview/widget/RecyclerView;

.field private runnable:Ljava/lang/Runnable;

.field private final selectTypeArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/CompleteListEditorTypeItem;",
            ">;"
        }
    .end annotation
.end field

.field private tabIndexSelected:I

.field private tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private type:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;

.field private typeLayout:Landroid/view/ViewGroup;

.field private typeLayoutBgColor:I

.field private typeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4KxU7QHT8RuUJtzFUFamXywWsTc(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->initIndicator$lambda$11$lambda$10$lambda$9(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pt-BJP-T0sTAHOtS67FYFewjwpY(Landroid/view/View;Landroid/graphics/Rect;Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->initKeyboardListener$lambda$8(Landroid/view/View;Landroid/graphics/Rect;Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Sxs51nWbboK4RWQGhqViTinDbww(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->onCreate$lambda$4(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TrvwP-27uE6vMcI77nl4QG1WlRg(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->initIndicator$lambda$11$lambda$10(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V5c5yDh-sujjyfcs0KIoY7MBCtM(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->onCreate$lambda$3(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kYOu7GOB2Cot3aelXLEpblX0iMo(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->doAfterDismiss$lambda$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n8hBcJ2WdKKOURxGz-f-hK_F5OU(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->onCreate$lambda$2(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wfnbxmd7HEogpka6Lv7jEs8oySQ(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->initContent$lambda$6(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->Companion:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    const-string v0, "#51628C"

    .line 122
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    const-string v0, "#717CEE"

    .line 123
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    const-string v0, "#E9EFFD"

    .line 124
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->typeLayoutBgColor:I

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->configList:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->configListSub:Ljava/util/List;

    .line 131
    sget-object v0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;->Variable:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;

    iput-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->type:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->selectTypeArray:Ljava/util/List;

    const/16 v0, 0x28

    .line 135
    iput v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->maxLength:I

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->typeList:Ljava/util/List;

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/toolssdk/R$color;->toolsdk_color_t3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/toolssdk/R$color;->toolsdk_color_n4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/codemao/toolssdk/R$color;->toolsdk_color_b2:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->typeLayoutBgColor:I

    return-void
.end method

.method public static final synthetic access$getCharByByteNum(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;Ljava/lang/String;I)C
    .registers 3

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->getCharByByteNum(Ljava/lang/String;I)C

    move-result p0

    return p0
.end method

.method public static final synthetic access$getCharacterNum(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;Ljava/lang/String;)I
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->getCharacterNum(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getCurrentTabIndex$p(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)I
    .registers 1

    .line 56
    iget p0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->currentTabIndex:I

    return p0
.end method

.method public static final synthetic access$getErrorTextV$p(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)Landroid/widget/TextView;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->errorTextV:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getGuideline$p(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)Landroidx/constraintlayout/widget/Guideline;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->guideline:Landroidx/constraintlayout/widget/Guideline;

    return-object p0
.end method

.method public static final synthetic access$getKeyboardHeight$p(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)I
    .registers 1

    .line 56
    iget p0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->keyboardHeight:I

    return p0
.end method

.method public static final synthetic access$getLastMills$cp()J
    .registers 2

    .line 56
    sget-wide v0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->lastMills:J

    return-wide v0
.end method

.method public static final synthetic access$getStringLessThanByteNum(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->getStringLessThanByteNum(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$keyboardStateChange(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;ZI)V
    .registers 3

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->keyboardStateChange(ZI)V

    return-void
.end method

.method public static final synthetic access$notifyEditTextLayout(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;Ljava/lang/String;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->notifyEditTextLayout(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$notifyTypeSelect(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;IILjava/lang/Integer;)V
    .registers 4

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->notifyTypeSelect(IILjava/lang/Integer;)V

    return-void
.end method

.method public static final synthetic access$selectTab(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;I)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->selectTab(I)V

    return-void
.end method

.method public static final synthetic access$setHasCallOpened$cp(Z)V
    .registers 1

    .line 56
    sput-boolean p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->hasCallOpened:Z

    return-void
.end method

.method public static final synthetic access$setLastMills$cp(J)V
    .registers 2

    .line 56
    sput-wide p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->lastMills:J

    return-void
.end method

.method public static final synthetic access$setOption$p(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->option:Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;

    return-void
.end method

.method public static final synthetic access$setTabIndexSelected$p(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;I)V
    .registers 2

    .line 56
    iput p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->tabIndexSelected:I

    return-void
.end method

.method private final dismissTypelayoutChildViews()V
    .registers 3

    .line 562
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    if-nez v0, :cond_7

    goto :goto_a

    :cond_7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 563
    :goto_a
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->recyclerViewSub:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_f

    goto :goto_12

    :cond_f
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_12
    return-void
.end method

.method private static final doAfterDismiss$lambda$17(Landroid/view/View;)V
    .registers 2

    const-string v0, "$decorView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    sget-boolean v0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->hasCallOpened:Z

    if-nez v0, :cond_c

    .line 582
    invoke-static {p0}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    :cond_c
    return-void
.end method

.method private final dp2px(F)F
    .registers 3

    .line 685
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000  # 0.5f

    add-float/2addr p1, v0

    return p1
.end method

.method private final firstTabSelectDisplay(Z)V
    .registers 5

    .line 542
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "第一个tab是否选中："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dVariable(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_64

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_64

    if-eqz p1, :cond_32

    .line 545
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 546
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2d

    goto :goto_43

    :cond_2d
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_43

    .line 548
    :cond_32
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_39

    goto :goto_3c

    :cond_39
    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 549
    :goto_3c
    iget-object v1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_43

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 551
    :cond_43
    :goto_43
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_64

    sget v1, Lcom/codemao/toolssdk/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_64

    const-string v1, "findViewById<ImageView>(R.id.icon)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_61

    const/4 p1, -0x1

    .line 553
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_64

    .line 555
    :cond_61
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    :cond_64
    :goto_64
    return-void
.end method

.method private final generateAnimator(I)V
    .registers 3

    .line 592
    iget v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->preCurrentIndex:I

    if-ne v0, p1, :cond_5

    return-void

    .line 597
    :cond_5
    invoke-direct {p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->getTabLayoutView()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 598
    :cond_14
    iput p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->preCurrentIndex:I

    return-void
.end method

.method private final getCharByByteNum(Ljava/lang/String;I)C
    .registers 9

    .line 636
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "this as java.lang.String).toCharArray()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 638
    :goto_b
    array-length v3, v0

    if-ge v2, v3, :cond_22

    add-int/lit8 v3, v2, 0x1

    .line 639
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->getCharacterNum(Ljava/lang/String;)I

    move-result v4

    if-lt v4, p2, :cond_20

    goto :goto_22

    :cond_20
    move v2, v3

    goto :goto_b

    .line 644
    :cond_22
    :goto_22
    aget-char p1, v0, v2

    return p1
.end method

.method private final getCharacterNum(Ljava/lang/String;)I
    .registers 3

    .line 662
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    goto :goto_14

    .line 665
    :cond_8
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->getDoubleByteNum(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v0

    :goto_14
    return p1
.end method

.method private final getDoubleByteNum(Ljava/lang/String;)I
    .registers 8

    .line 671
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const-string v0, "this as java.lang.String).toCharArray()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 672
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_d
    if-ge v2, v0, :cond_23

    .line 673
    aget-char v4, p1, v2

    const/16 v5, 0x20

    if-gt v5, v4, :cond_1b

    const/16 v5, 0x7f

    if-ge v4, v5, :cond_1b

    const/4 v4, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v4, 0x0

    :goto_1c
    if-nez v4, :cond_20

    add-int/lit8 v3, v3, 0x1

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_23
    return v3
.end method

.method private final getLineMaxNumber(Ljava/lang/String;FI)F
    .registers 5

    if-eqz p1, :cond_b

    .line 690
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    if-eqz v0, :cond_10

    const/4 p1, 0x0

    return p1

    .line 693
    :cond_10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 694
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 696
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    .line 697
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    int-to-float p1, p3

    div-float/2addr p1, p2

    return p1
.end method

.method private final getStringLessThanByteNum(Ljava/lang/String;I)Ljava/lang/String;
    .registers 11

    const/4 v0, -0x1

    if-gt p2, v0, :cond_4

    return-object p1

    .line 649
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 650
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const-string v2, "this as java.lang.String).toCharArray()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v2, :cond_2f

    add-int/lit8 v5, v4, 0x1

    .line 652
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->getCharacterNum(Ljava/lang/String;)I

    move-result v6

    if-gt v6, p2, :cond_2f

    .line 653
    aget-char v4, v1, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v5

    goto :goto_15

    .line 658
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sb.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getTabLayoutView()Lcom/google/android/material/tabs/TabLayout;
    .registers 2

    .line 822
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    return-object v0
.end method

.method private final initContent()V
    .registers 3

    .line 251
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->hintText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 252
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-nez v0, :cond_d

    goto :goto_12

    :cond_d
    iget-object v1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->hintText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 254
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_1e

    new-instance v1, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$$ExternalSyntheticLambda7;-><init>(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :cond_1e
    return-void
.end method

.method private static final initContent$lambda$6(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->contentText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 256
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->contentText:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->notifyEditTextLayout(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->contentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :cond_1e
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->option:Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;->getNotSelectAll()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    if-nez v0, :cond_43

    .line 259
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_52

    iget-object v2, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->contentText:Ljava/lang/String;

    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_52

    .line 261
    :cond_43
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_52

    iget-object v2, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->contentText:Ljava/lang/String;

    if-eqz v2, :cond_4f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    :cond_4f
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 264
    :cond_52
    :goto_52
    iget-boolean v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->isRequestMaxLength:Z

    if-eqz v0, :cond_66

    .line 265
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-nez v0, :cond_5b

    goto :goto_66

    :cond_5b
    iget v1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->maxLength:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->lengthFilter(I)[Landroid/text/InputFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_66
    :goto_66
    return-void
.end method

.method private final initEditText()V
    .registers 4

    .line 391
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-nez v0, :cond_5

    goto :goto_a

    :cond_5
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 392
    :goto_a
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-nez v0, :cond_f

    goto :goto_13

    :cond_f
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 394
    :goto_13
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    if-nez v0, :cond_19

    goto :goto_1c

    :cond_19
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 395
    :goto_1c
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-nez v0, :cond_21

    goto :goto_24

    :cond_21
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 396
    :goto_24
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 397
    :cond_2b
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 399
    :cond_32
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-nez v0, :cond_37

    goto :goto_3b

    :cond_37
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextAlignment(I)V

    .line 400
    :goto_3b
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-nez v0, :cond_40

    goto :goto_46

    :cond_40
    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 401
    :goto_46
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "初始化,设置左对齐"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dVariable(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->isPad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 404
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-nez v0, :cond_61

    goto :goto_66

    :cond_61
    const/high16 v1, 0x42000000  # 32.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 405
    :goto_66
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->errorTextV:Landroid/widget/TextView;

    const/high16 v1, 0x41800000  # 16.0f

    if-nez v0, :cond_6d

    goto :goto_70

    :cond_6d
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 406
    :goto_70
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->errorTextV:Landroid/widget/TextView;

    if-eqz v0, :cond_79

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_7a

    :cond_79
    const/4 v0, 0x0

    :goto_7a
    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 407
    invoke-direct {p0, v1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->dp2px(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 410
    :cond_88
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_94

    new-instance v1, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initEditText$1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initEditText$1;-><init>(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_94
    return-void
.end method

.method private final initIndicator()V
    .registers 7

    .line 448
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 449
    new-instance v2, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initIndicator$1$1;

    invoke-direct {v2, p0, v0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initIndicator$1$1;-><init>(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;Lcom/google/android/material/tabs/TabLayout;)V

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 483
    sget-object v2, Lcom/codemao/toolssdk/ljwx/web/block/variable/VariableInputTabLayout;->INSTANCE:Lcom/codemao/toolssdk/ljwx/web/block/variable/VariableInputTabLayout;

    iget-object v3, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->typeList:Ljava/util/List;

    invoke-virtual {v2, v0, v3}, Lcom/codemao/toolssdk/ljwx/web/block/variable/VariableInputTabLayout;->initTabLayout(Lcom/google/android/material/tabs/TabLayout;Ljava/util/List;)V

    .line 484
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_2c

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2c

    new-instance v2, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    :cond_2c
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->typeList:Ljava/util/List;

    .line 1861
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_44

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_44
    check-cast v3, Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;

    .line 493
    iget-object v3, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->configList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 494
    iget-object v3, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->configList:Ljava/util/List;

    iget-object v5, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->typeList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;

    invoke-virtual {v5}, Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;->getConfigArray()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5c

    goto :goto_61

    :cond_5c
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_61
    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x0

    .line 495
    invoke-direct {p0, v2, v1, v3}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->notifyTypeSelect(IILjava/lang/Integer;)V

    move v2, v4

    goto :goto_33

    :cond_6a
    return-void
.end method

.method private static final initIndicator$lambda$11$lambda$10(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;Landroid/view/View;)V
    .registers 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 485
    iput p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->tabIndexSelected:I

    .line 486
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    if-eqz p1, :cond_16

    new-instance v0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$$ExternalSyntheticLambda5;-><init>(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_16
    return-void
.end method

.method private static final initIndicator$lambda$11$lambda$10$lambda$9(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 488
    :cond_c
    invoke-direct {p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->showSoftInput()V

    return-void
.end method

.method private final initKeyboardListener()V
    .registers 5

    .line 324
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "开始监听键盘高度："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->dKeyboard(Ljava/lang/String;)V

    .line 325
    sget-object v0, Lcom/codemao/toolssdk/ljwx/app/util/KeyboardUtils;->INSTANCE:Lcom/codemao/toolssdk/ljwx/app/util/KeyboardUtils;

    .line 326
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    const-string v3, "rootView"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    new-instance v3, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initKeyboardListener$2;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initKeyboardListener$2;-><init>(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V

    invoke-virtual {v0, v1, v3}, Lcom/codemao/toolssdk/ljwx/app/util/KeyboardUtils;->registerHeightChangedListener(Landroid/view/View;Lkotlin/jvm/functions/Function2;)V

    const/16 v0, 0x1d

    if-le v2, v0, :cond_30

    return-void

    .line 341
    :cond_30
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "context as Activity).window.decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 343
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, v1, p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$$ExternalSyntheticLambda3;-><init>(Landroid/view/View;Landroid/graphics/Rect;Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private static final initKeyboardListener$lambda$8(Landroid/view/View;Landroid/graphics/Rect;Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V
    .registers 5

    const-string v0, "$decorView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0, p1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 345
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    .line 346
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    .line 348
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "键盘高度viewTree:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->dKeyboard(Ljava/lang/String;)V

    if-lez p0, :cond_3e

    .line 350
    iget p1, p2, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->tabIndexSelected:I

    if-nez p1, :cond_42

    const/4 p1, 0x1

    .line 351
    invoke-direct {p2, p1, p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->keyboardStateChange(ZI)V

    goto :goto_42

    :cond_3e
    const/4 p1, 0x0

    .line 354
    invoke-direct {p2, p1, p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->keyboardStateChange(ZI)V

    :cond_42
    :goto_42
    return-void
.end method

.method private final initList()V
    .registers 6

    .line 230
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->configList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 231
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->typeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;

    .line 232
    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;->getConfigArray()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_28

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    if-ne v2, v4, :cond_28

    const/4 v2, 0x1

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    if-eqz v2, :cond_b

    .line 233
    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;->getConfigArray()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_38

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/toolssdk/model/dsbridge/TextConfig;

    goto :goto_39

    :cond_38
    const/4 v2, 0x0

    :goto_39
    if-nez v2, :cond_3c

    goto :goto_3f

    :cond_3c
    invoke-virtual {v2, v4}, Lcom/codemao/toolssdk/model/dsbridge/TextConfig;->setSelected(Z)V

    .line 234
    :goto_3f
    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;->getSubConfigCheckBoxArray()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 1851
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;

    .line 235
    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->initDefaultValue()V

    goto :goto_49

    .line 239
    :cond_59
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->configListSub:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private final initSelectTypeSubViewList()V
    .registers 5

    .line 296
    sget v0, Lcom/codemao/toolssdk/R$id;->recyclerView_sub:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->recyclerViewSub:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_d

    goto :goto_1a

    .line 298
    :cond_d
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 297
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 299
    :goto_1a
    new-instance v0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->configList:Ljava/util/List;

    iget-object v3, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->configListSub:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->configSubAdapter:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;

    .line 300
    iget-object v1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->recyclerViewSub:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_33

    goto :goto_36

    :cond_33
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :goto_36
    return-void
.end method

.method private final initSelectTypeViewList()V
    .registers 11

    .line 287
    sget v0, Lcom/codemao/toolssdk/R$id;->recyclerView:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_d

    goto :goto_1a

    .line 289
    :cond_d
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 288
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 290
    :goto_1a
    new-instance v0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v1, "context"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->configList:Ljava/util/List;

    iget-object v7, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->configSubAdapter:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;

    iget-object v8, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->configListSub:Ljava/util/List;

    move-object v4, v0

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;Ljava/util/List;Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->configAdapter:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigAdapter;

    .line 291
    iget-object v1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_37

    goto :goto_3a

    :cond_37
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 292
    :goto_3a
    invoke-direct {p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->dismissTypelayoutChildViews()V

    return-void
.end method

.method private final intHidConfigUI()V
    .registers 3

    .line 304
    iget-boolean v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->hideConfigUI:Z

    if-eqz v0, :cond_20

    .line 305
    invoke-direct {p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->getTabLayoutView()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_d

    goto :goto_10

    :cond_d
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 306
    :goto_10
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->typeLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_15

    goto :goto_18

    :cond_15
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 307
    :goto_18
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->typeLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_32

    .line 309
    :cond_20
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->typeLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_25

    goto :goto_29

    :cond_25
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 310
    :goto_29
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->typeLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_32

    iget v1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->typeLayoutBgColor:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_32
    :goto_32
    return-void
.end method

.method private final isPad(Landroid/content/Context;)Z
    .registers 3

    .line 681
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    const/4 v0, 0x3

    if-lt p1, v0, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method private final keyboardStateChange(ZI)V
    .registers 7

    .line 362
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "修改键盘状态："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->dKeyboard(Ljava/lang/String;)V

    .line 363
    sget-object v0, Lcom/codemao/toolssdk/ljwx/app/util/KeyboardUtils;->INSTANCE:Lcom/codemao/toolssdk/ljwx/app/util/KeyboardUtils;

    invoke-virtual {v0, p2}, Lcom/codemao/toolssdk/ljwx/app/util/KeyboardUtils;->isFloatingMode(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 365
    iget p2, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->normalModeHeight:I

    if-lez p2, :cond_2b

    goto :goto_3c

    :cond_2b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-double v0, p2

    const-wide v2, 0x3fdccccccccccccdL  # 0.45

    mul-double v0, v0, v2

    double-to-int p2, v0

    .line 364
    :goto_3c
    iput p2, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->keyboardHeight:I

    goto :goto_43

    .line 367
    :cond_3f
    iput p2, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->normalModeHeight:I

    .line 368
    iput p2, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->keyboardHeight:I

    .line 370
    :goto_43
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->softVisibleChange(Z)V

    return-void
.end method

.method private final lengthFilter(I)[Landroid/text/InputFilter;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    .line 604
    new-instance v1, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$lengthFilter$1;

    invoke-direct {v1, p1, p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$lengthFilter$1;-><init>(ILcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    return-object v0
.end method

.method private final measureLineWithContentText(Ljava/lang/String;)F
    .registers 8

    .line 271
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/toolssdk/view/indicator/buildins/UIUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43780000  # 248.0f

    invoke-direct {p0, v1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->dp2px(F)F

    move-result v1

    sub-float/2addr v0, v1

    .line 273
    iget-object v1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextSize()F

    move-result v1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    .line 272
    invoke-direct {p0, p1, v1, v0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->getLineMaxNumber(Ljava/lang/String;FI)F

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_31

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "\n"

    .line 275
    invoke-static {p1, v5, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-ne v3, v1, :cond_31

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    :goto_32
    if-eqz v1, :cond_3e

    .line 276
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "有换行符"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dVariable(Ljava/lang/String;)V

    const/high16 p1, 0x40000000  # 2.0f

    return p1

    :cond_3e
    if-eqz p1, :cond_44

    .line 279
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :cond_44
    int-to-float p1, v2

    div-float/2addr p1, v0

    return p1
.end method

.method private final notifyEditTextLayout(Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_b

    .line 429
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    const v1, 0x800003

    const/4 v2, 0x2

    if-eqz v0, :cond_2a

    .line 430
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-nez p1, :cond_17

    goto :goto_1a

    :cond_17
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setTextAlignment(I)V

    .line 431
    :goto_1a
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-nez p1, :cond_1f

    goto :goto_22

    :cond_1f
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 432
    :goto_22
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "文字空，设置左对齐"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dVariable(Ljava/lang/String;)V

    return-void

    .line 435
    :cond_2a
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->measureLineWithContentText(Ljava/lang/String;)F

    move-result p1

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4c

    .line 437
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-nez p1, :cond_39

    goto :goto_3c

    :cond_39
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setTextAlignment(I)V

    .line 438
    :goto_3c
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-nez p1, :cond_41

    goto :goto_44

    :cond_41
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 439
    :goto_44
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "大于一行，设置左对齐"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dVariable(Ljava/lang/String;)V

    goto :goto_66

    .line 441
    :cond_4c
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-nez p1, :cond_51

    goto :goto_55

    :cond_51
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextAlignment(I)V

    .line 442
    :goto_55
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-nez p1, :cond_5a

    goto :goto_5f

    :cond_5a
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 443
    :goto_5f
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "小于一行，设置居中"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dVariable(Ljava/lang/String;)V

    :goto_66
    return-void
.end method

.method private final notifyTypeSelect(IILjava/lang/Integer;)V
    .registers 12

    .line 826
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "更新tab显示："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dVariable(Ljava/lang/String;)V

    .line 827
    iget-object v1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v1, :cond_101

    invoke-virtual {v1, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    if-eqz v1, :cond_101

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_101

    .line 829
    :try_start_34
    iget-object v3, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->typeList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;

    .line 830
    iget-object v3, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->configList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/toolssdk/model/dsbridge/TextConfig;

    const/4 v3, 0x0

    if-eqz p3, :cond_54

    .line 831
    iget-object v4, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->configListSub:Ljava/util/List;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;

    goto :goto_55

    :cond_54
    move-object p3, v3

    .line 832
    :goto_55
    invoke-static {v1}, Lcom/codemao/toolssdk/databinding/ToolsdkTablayoutTabItemVariableBinding;->bind(Landroid/view/View;)Lcom/codemao/toolssdk/databinding/ToolsdkTablayoutTabItemVariableBinding;

    move-result-object v4

    const-string v5, "bind(this)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_65

    .line 833
    invoke-virtual {p3}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    goto :goto_69

    :cond_65
    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/TextConfig;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    .line 834
    :goto_69
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v6, v4, Lcom/codemao/toolssdk/databinding/ToolsdkTablayoutTabItemVariableBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    if-eqz p3, :cond_7e

    .line 835
    invoke-virtual {p3}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_82

    :cond_7e
    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/TextConfig;->getText()Ljava/lang/String;

    move-result-object v1

    .line 836
    :cond_82
    iget-object v4, v4, Lcom/codemao/toolssdk/databinding/ToolsdkTablayoutTabItemVariableBinding;->title:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tab:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",config:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/TextConfig;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_c5

    invoke-virtual {p3}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->getTitle()Ljava/lang/String;

    move-result-object v3

    :cond_c5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dVariable(Ljava/lang/String;)V

    .line 838
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "更新的内容："

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dVariable(Ljava/lang/String;)V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_e9} :catch_ea

    goto :goto_101

    :catch_ea
    move-exception p1

    .line 840
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "更新tab异常："

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dVariable(Ljava/lang/String;)V

    :cond_101
    :goto_101
    return-void
.end method

.method private static final onCreate$lambda$2(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;Landroid/view/View;)V
    .registers 11

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 186
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->commitLoading(Z)V

    .line 187
    invoke-direct {p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->setFullScreen()V

    .line 188
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->typeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;

    .line 190
    new-instance v8, Lcom/codemao/toolssdk/model/dsbridge/CompleteListEditorTypeItem;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/codemao/toolssdk/model/dsbridge/CompleteListEditorTypeItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 191
    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/codemao/toolssdk/model/dsbridge/CompleteListEditorTypeItem;->setType(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;->getConfigArray()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5c

    .line 1851
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3f
    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/toolssdk/model/dsbridge/TextConfig;

    .line 193
    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/TextConfig;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 194
    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/TextConfig;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/codemao/toolssdk/model/dsbridge/CompleteListEditorTypeItem;->setConfigType(Ljava/lang/String;)V

    .line 195
    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 198
    :cond_5c
    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;->getSubConfigCheckBoxArray()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 1851
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_66
    :goto_66
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;

    .line 199
    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_66

    .line 200
    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/codemao/toolssdk/model/dsbridge/CompleteListEditorTypeItem;->setSubConfigType(Ljava/lang/String;)V

    goto :goto_66

    .line 204
    :cond_80
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->selectTypeArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 205
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->selectTypeArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->clickListener:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$BtnClickListener;

    if-eqz p1, :cond_91

    invoke-interface {p1, p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$BtnClickListener;->onCommitClickListener(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V

    :cond_91
    return-void
.end method

.method private static final onCreate$lambda$3(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-direct {p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->setFullScreen()V

    .line 210
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    .line 211
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->clickListener:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$BtnClickListener;

    if-eqz p1, :cond_14

    invoke-interface {p1, p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$BtnClickListener;->onExitClickListener(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V

    :cond_14
    return-void
.end method

.method private static final onCreate$lambda$4(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->showSoftInput()V

    return-void
.end method

.method private final selectTab(I)V
    .registers 6

    .line 500
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectTab:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dVariable(Ljava/lang/String;)V

    .line 501
    iget v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->preCurrentIndex:I

    if-eq v0, p1, :cond_e0

    iget-boolean v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->hideConfigUI:Z

    if-eqz v0, :cond_20

    goto/16 :goto_e0

    .line 504
    :cond_20
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->generateAnimator(I)V

    .line 506
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->configList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 507
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->configList:Ljava/util/List;

    iget-object v1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->typeList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;->getConfigArray()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_39

    goto :goto_3e

    :cond_39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_3e
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 508
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->configAdapter:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigAdapter;

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 509
    :cond_48
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->configListSub:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 510
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->typeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;->getSubConfigCheckBoxArray()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_60

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1851
    :cond_60
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptionsCheckBox;

    goto :goto_64

    .line 514
    :cond_71
    iget-object v1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->recyclerViewSub:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    if-eqz v1, :cond_7b

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    goto :goto_7c

    :cond_7b
    move-object v1, v2

    :goto_7c
    instance-of v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v3, :cond_83

    move-object v2, v1

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    :cond_83
    const/4 v1, 0x0

    if-eqz v2, :cond_a5

    .line 515
    iget-object v3, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->typeList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;

    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;->alignCenter()Z

    move-result v3

    if-eqz v3, :cond_99

    .line 516
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 517
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    goto :goto_9d

    .line 519
    :cond_99
    sget v3, Lcom/codemao/toolssdk/R$id;->recyclerView:I

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 521
    :goto_9d
    iget-object v3, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->recyclerViewSub:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_a2

    goto :goto_a5

    :cond_a2
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    :cond_a5
    :goto_a5
    iget-object v2, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->configListSub:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 524
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->configSubAdapter:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$ConfigSubAdapter;

    if-eqz v0, :cond_b1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_b1
    if-nez p1, :cond_cc

    .line 527
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "第一个tab被选中"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dVariable(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_c1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 529
    :cond_c1
    invoke-direct {p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->showSoftInput()V

    .line 530
    invoke-direct {p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->dismissTypelayoutChildViews()V

    const/4 v0, 0x1

    .line 531
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->firstTabSelectDisplay(Z)V

    goto :goto_de

    .line 533
    :cond_cc
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v2, "不是第一个tab隐藏键盘"

    invoke-virtual {v0, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dVariable(Ljava/lang/String;)V

    .line 534
    invoke-direct {p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->showTypeLayoutChildViews()V

    .line 535
    invoke-direct {p0, v1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->firstTabSelectDisplay(Z)V

    .line 536
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    .line 538
    :goto_de
    iput p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->currentTabIndex:I

    :cond_e0
    :goto_e0
    return-void
.end method

.method private final setFullScreen()V
    .registers 3

    .line 243
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_b

    check-cast v0, Landroid/app/Activity;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/codemao/toolssdk/utils/CMToolsAppUtils;->hideSystemUI(Landroid/app/Activity;)V

    return-void
.end method

.method private final showSoftInput()V
    .registers 2

    .line 247
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->showSoftInput(Landroid/view/View;)V

    return-void
.end method

.method private final showTypeLayoutChildViews()V
    .registers 3

    .line 567
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    goto :goto_9

    :cond_6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 568
    :goto_9
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->recyclerViewSub:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_e

    goto :goto_11

    :cond_e
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_11
    return-void
.end method

.method private final softVisibleChange(Z)V
    .registers 3

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    .line 375
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->firstTabSelectDisplay(Z)V

    .line 376
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->guideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz p1, :cond_f

    iget v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->keyboardHeight:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    .line 377
    :cond_f
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 378
    :cond_16
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    goto :goto_31

    .line 380
    :cond_1e
    iget p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->preCurrentIndex:I

    const/4 v0, 0x0

    if-nez p1, :cond_2a

    .line 381
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->guideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz p1, :cond_2a

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    .line 383
    :cond_2a
    iget p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->currentTabIndex:I

    if-nez p1, :cond_31

    .line 384
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->firstTabSelectDisplay(Z)V

    .line 387
    :cond_31
    :goto_31
    invoke-direct {p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->setFullScreen()V

    return-void
.end method


# virtual methods
.method public final commitLoading(Z)V
    .registers 3

    .line 818
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->commitProgressLoading:Landroid/widget/ProgressBar;

    if-nez v0, :cond_5

    goto :goto_e

    :cond_5
    if-eqz p1, :cond_9

    const/4 p1, 0x0

    goto :goto_b

    :cond_9
    const/16 p1, 0x8

    :goto_b
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_e
    return-void
.end method

.method protected doAfterDismiss()V
    .registers 5

    .line 572
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    .line 573
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "activity.window.decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    invoke-static {v0, p0}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->removeLayoutChangeListener(Landroid/view/View;Landroid/view/View;)V

    .line 575
    iget-object v1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->blur:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;->recycleImageBitmap(Landroid/widget/ImageView;)V

    .line 576
    iget-object v1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    .line 577
    iget-object v1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_2e

    iget-object v2, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 580
    :cond_2e
    new-instance v1, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$$ExternalSyntheticLambda4;-><init>(Landroid/view/View;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    .line 587
    sput-boolean v0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->hasCallOpened:Z

    .line 588
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterDismiss()V

    return-void
.end method

.method public final getActorIconUrl()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->actorIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getClickListener()Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$BtnClickListener;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->clickListener:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$BtnClickListener;

    return-object v0
.end method

.method public final getContentText()Ljava/lang/String;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->contentText:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorText()Ljava/lang/String;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->errorText:Ljava/lang/String;

    return-object v0
.end method

.method public final getHideConfigUI()Z
    .registers 2

    .line 148
    iget-boolean v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->hideConfigUI:Z

    return v0
.end method

.method public final getHintText()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->hintText:Ljava/lang/String;

    return-object v0
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 165
    sget v0, Lcom/codemao/toolssdk/R$layout;->toolsdk_layout_pop_common_input:I

    return v0
.end method

.method public final getMaxLength()I
    .registers 2

    .line 135
    iget v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->maxLength:I

    return v0
.end method

.method public final getRunnable()Ljava/lang/Runnable;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final getSelectTypeArray()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/CompleteListEditorTypeItem;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->selectTypeArray:Ljava/util/List;

    return-object v0
.end method

.method public final getType()Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->type:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;

    return-object v0
.end method

.method public final getTypeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->typeList:Ljava/util/List;

    return-object v0
.end method

.method protected onCreate()V
    .registers 5

    .line 169
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 170
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/toolssdk/R$color;->toolsdk_color_t3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 171
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/toolssdk/R$color;->toolsdk_color_n4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 172
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/toolssdk/R$color;->toolsdk_color_b2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->typeLayoutBgColor:I

    .line 174
    sget v0, Lcom/codemao/toolssdk/R$id;->edit:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    .line 175
    sget v0, Lcom/codemao/toolssdk/R$id;->type_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->typeLayout:Landroid/view/ViewGroup;

    .line 176
    sget v0, Lcom/codemao/toolssdk/R$id;->tab_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 177
    sget v0, Lcom/codemao/toolssdk/R$id;->blur:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->blur:Landroid/widget/ImageView;

    .line 178
    sget v0, Lcom/codemao/toolssdk/R$id;->exit_imageV:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->closeImage:Landroid/widget/ImageView;

    .line 179
    sget v0, Lcom/codemao/toolssdk/R$id;->commit_textV:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->commitTextV:Landroid/widget/TextView;

    .line 180
    sget v0, Lcom/codemao/toolssdk/R$id;->progress_loading:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->commitProgressLoading:Landroid/widget/ProgressBar;

    .line 181
    sget v0, Lcom/codemao/toolssdk/R$id;->error_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->errorTextV:Landroid/widget/TextView;

    .line 182
    sget v0, Lcom/codemao/toolssdk/R$id;->type_layout_guide_line:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->guideline:Landroidx/constraintlayout/widget/Guideline;

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->commitLoading(Z)V

    .line 185
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->commitTextV:Landroid/widget/TextView;

    if-eqz v0, :cond_8b

    new-instance v1, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    :cond_8b
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->closeImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_97

    new-instance v1, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    :cond_97
    invoke-direct {p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->initList()V

    .line 214
    invoke-direct {p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->initSelectTypeSubViewList()V

    .line 215
    invoke-direct {p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->initSelectTypeViewList()V

    .line 216
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->blur:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;->takeBlurScreenShot(Landroid/app/Activity;Landroid/widget/ImageView;)V

    .line 217
    invoke-direct {p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->initIndicator()V

    .line 218
    invoke-direct {p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->initKeyboardListener()V

    .line 219
    invoke-direct {p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->intHidConfigUI()V

    .line 220
    invoke-direct {p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->initEditText()V

    .line 221
    invoke-direct {p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->initContent()V

    .line 223
    new-instance v0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$$ExternalSyntheticLambda6;-><init>(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->runnable:Ljava/lang/Runnable;

    .line 226
    iget-object v1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_cf

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_cf
    return-void
.end method

.method protected onDismiss()V
    .registers 2

    .line 703
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onDismiss()V

    .line 704
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    return-void
.end method

.method public final setActorIconUrl(Ljava/lang/String;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->actorIconUrl:Ljava/lang/String;

    return-void
.end method

.method public final setClickListener(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$BtnClickListener;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->clickListener:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$BtnClickListener;

    return-void
.end method

.method public final setContentText(Ljava/lang/String;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->contentText:Ljava/lang/String;

    return-void
.end method

.method public final setErrorText(Ljava/lang/String;)V
    .registers 4

    .line 141
    iput-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->errorText:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->errorTextV:Landroid/widget/TextView;

    if-nez v0, :cond_7

    goto :goto_a

    :cond_7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :goto_a
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->errorTextV:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-nez p1, :cond_10

    goto :goto_13

    :cond_10
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    :goto_13
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_2a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    if-ne p1, v1, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    if-eqz v1, :cond_42

    .line 145
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->inputEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_42

    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    invoke-virtual {p1, v0, v1}, Landroid/widget/EditText;->setSelection(II)V

    :cond_42
    return-void
.end method

.method public final setHideConfigUI(Z)V
    .registers 2

    .line 148
    iput-boolean p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->hideConfigUI:Z

    return-void
.end method

.method public final setHintText(Ljava/lang/String;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->hintText:Ljava/lang/String;

    return-void
.end method

.method public final setMaxLength(I)V
    .registers 2

    .line 135
    iput p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->maxLength:I

    return-void
.end method

.method public final setRequestMaxLength(Z)V
    .registers 2

    .line 134
    iput-boolean p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->isRequestMaxLength:Z

    return-void
.end method

.method public final setRunnable(Ljava/lang/Runnable;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public final setType(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iput-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->type:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$TYPE;

    return-void
.end method

.method public final setTypeList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/TypeConfig;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iput-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->typeList:Ljava/util/List;

    return-void
.end method
