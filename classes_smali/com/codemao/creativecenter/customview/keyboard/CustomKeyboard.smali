.class public Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;
.super Ljava/lang/Object;
.source "CustomKeyboard.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$OnKeyListener;,
        Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomKeyboard.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomKeyboard.kt\ncom/codemao/creativecenter/customview/keyboard/CustomKeyboard\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,1011:1\n253#2,2:1012\n251#2:1014\n251#2:1015\n253#2,2:1016\n251#2:1018\n*E\n*S KotlinDebug\n*F\n+ 1 CustomKeyboard.kt\ncom/codemao/creativecenter/customview/keyboard/CustomKeyboard\n*L\n286#1,2:1012\n594#1:1014\n601#1:1015\n602#1,2:1016\n617#1:1018\n*E\n"
.end annotation


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private context:Landroid/content/Context;

.field private currentEditText:Landroid/widget/EditText;

.field private currentKeyboard:Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

.field private final editTextArray$delegate:Lkotlin/Lazy;

.field private globalFocusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

.field private hideAnimation:Landroid/view/animation/Animation;

.field private isAllCaps:Z

.field private isBringToFront:Z

.field private isPlaySoundEffect:Z

.field private final keyboardNormal$delegate:Lkotlin/Lazy;

.field private final keyboardNormalModeChange$delegate:Lkotlin/Lazy;

.field private keyboardType:I

.field private final keyboardTypeArray$delegate:Lkotlin/Lazy;

.field private keyboardView:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;

.field private keyboardViewGroup:Landroid/view/View;

.field private onKeyCancelListener:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$OnKeyListener;

.field private onKeyDoneListener:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$OnKeyListener;

.field private onKeyExtraListener:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$OnKeyListener;

.field private onKeyboardActionListener:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;

.field private onTouchListener:Landroid/view/View$OnTouchListener;

.field private showAnimation:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .registers 13

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$layout;->creative_keyboard_container:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const-string v0, "LayoutInflater.from(cont…keyboard_container, null)"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    sget v8, Lcom/codemao/creativecenter/R$id;->keyboardView:I

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 238
    invoke-direct/range {v3 .. v8}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyboardContainer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyboardType:I

    .line 35
    new-instance v0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$keyboardNormal$2;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$keyboardNormal$2;-><init>(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyboardNormal$delegate:Lkotlin/Lazy;

    .line 36
    new-instance v0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$keyboardNormalModeChange$2;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$keyboardNormalModeChange$2;-><init>(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyboardNormalModeChange$delegate:Lkotlin/Lazy;

    .line 57
    sget-object v0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$editTextArray$2;->INSTANCE:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$editTextArray$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->editTextArray$delegate:Lkotlin/Lazy;

    .line 64
    sget-object v0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$keyboardTypeArray$2;->INSTANCE:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$keyboardTypeArray$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyboardTypeArray$delegate:Lkotlin/Lazy;

    .line 261
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->context:Landroid/content/Context;

    .line 262
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->getKeyboardNormal()Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->currentKeyboard:Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    .line 263
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->initKeyboardView(Landroid/content/Context;)V

    .line 264
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->initKeyboardView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;I)V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;)Landroid/content/Context;
    .registers 2

    .line 25
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->context:Landroid/content/Context;

    if-nez p0, :cond_9

    const-string v0, "context"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    return-object p0
.end method

.method public static final synthetic access$getEditTextArray$p(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;)Landroid/util/ArrayMap;
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->getEditTextArray()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getKeyboardViewGroup$p(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;)Landroid/view/View;
    .registers 2

    .line 25
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyboardViewGroup:Landroid/view/View;

    if-nez p0, :cond_9

    const-string v0, "keyboardViewGroup"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    return-object p0
.end method

.method public static final synthetic access$getOnKeyboardActionListener$p(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;)Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->onKeyboardActionListener:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;

    return-object p0
.end method

.method public static final synthetic access$performKey(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;I[I)V
    .registers 3

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->performKey(I[I)V

    return-void
.end method

.method public static final synthetic access$sendVibrationEffect(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->sendVibrationEffect()V

    return-void
.end method

.method public static final synthetic access$viewFocus(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;Landroid/view/View;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->viewFocus(Landroid/view/View;)V

    return-void
.end method

.method private final disableShowSoftInput(Landroid/widget/EditText;)V
    .registers 8

    const/4 v0, 0x0

    .line 536
    :try_start_1
    const-class v1, Landroid/widget/EditText;

    const-string v2, "setShowSoftInputOnFocus"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "method"

    .line 537
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    .line 538
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v0

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_22

    goto :goto_25

    .line 540
    :catch_22
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    :goto_25
    return-void
.end method

.method private final getEditTextArray()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->editTextArray$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    return-object v0
.end method

.method private final getKeyboardNormal()Lcom/codemao/creativecenter/customview/keyboard/Keyboard;
    .registers 2

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyboardNormal$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    return-object v0
.end method

.method private final getKeyboardNormalModeChange()Lcom/codemao/creativecenter/customview/keyboard/Keyboard;
    .registers 2

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyboardNormalModeChange$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    return-object v0
.end method

.method private final getKeyboardTypeArray()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyboardTypeArray$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    return-object v0
.end method

.method private final initKeyboardView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 20

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 283
    iput-object v2, v0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyboardViewGroup:Landroid/view/View;

    const-string v3, "keyboardViewGroup"

    if-nez v2, :cond_e

    .line 284
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    invoke-virtual/range {p3 .. p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;

    iput-object v2, v0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyboardView:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;

    if-eqz v2, :cond_3f

    .line 287
    iget-object v4, v0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->currentKeyboard:Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    invoke-virtual {v2, v4}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->setKeyboard(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)V

    const/4 v4, 0x1

    .line 288
    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    const/4 v4, 0x0

    .line 289
    invoke-virtual {v2, v4}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->setPreviewEnabled(Z)V

    .line 290
    new-instance v4, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$$inlined$let$lambda$1;

    invoke-direct {v4, p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$$inlined$let$lambda$1;-><init>(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;)V

    invoke-virtual {v2, v4}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->setOnKeyboardActionListener(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;)V

    .line 330
    invoke-virtual {v2}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->isAllCaps()Z

    move-result v2

    iput-boolean v2, v0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->isAllCaps:Z

    .line 332
    iget-object v2, v0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyboardViewGroup:Landroid/view/View;

    if-nez v2, :cond_3a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3a
    const/16 v4, 0x8

    .line 1012
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 336
    :cond_3f
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/high16 v11, 0x3f800000  # 1.0f

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v2, v0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->showAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0xc8

    .line 340
    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 342
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/high16 v14, 0x3f800000  # 1.0f

    move-object v6, v2

    invoke-direct/range {v6 .. v14}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v2, v0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->hideAnimation:Landroid/view/animation/Animation;

    .line 346
    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 348
    iget-object v2, v0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->hideAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_72

    const-string v4, "hideAnimation"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_72
    new-instance v4, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$2;

    invoke-direct {v4, p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$2;-><init>(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 365
    new-instance v2, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$3;

    invoke-direct {v2, p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$3;-><init>(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;)V

    iput-object v2, v0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 374
    new-instance v2, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$4;

    invoke-direct {v2, p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$4;-><init>(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;)V

    iput-object v2, v0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->globalFocusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    if-eqz v1, :cond_97

    .line 386
    iget-object v2, v0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyboardViewGroup:Landroid/view/View;

    if-nez v2, :cond_91

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_91
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v3, p1

    goto :goto_ae

    .line 388
    :cond_97
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x50

    .line 392
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 393
    iget-object v2, v0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyboardViewGroup:Landroid/view/View;

    if-nez v2, :cond_a9

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a9
    move-object/from16 v3, p1

    invoke-virtual {v3, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    :goto_ae
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, v0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->globalFocusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    if-nez v2, :cond_bb

    const-string v3, "globalFocusChangeListener"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_bb
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    return-void
.end method

.method private final keyAlt()V
    .registers 1

    return-void
.end method

.method private final keyBack(Z)V
    .registers 3

    .line 808
    iget p1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyboardType:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    goto :goto_9

    :cond_6
    const/4 p1, 0x1

    .line 810
    iput p1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyboardType:I

    .line 814
    :goto_9
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->switchKeyboard()V

    return-void
.end method

.method private final keyCancel(I)V
    .registers 4

    .line 785
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->hide()V

    .line 786
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->onKeyCancelListener:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$OnKeyListener;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->currentEditText:Landroid/widget/EditText;

    invoke-interface {v0, v1, p1}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$OnKeyListener;->onKey(Landroid/view/View;I)V

    :cond_c
    return-void
.end method

.method private final keyDelete()V
    .registers 5

    const/16 v0, 0x43

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 906
    invoke-static {p0, v0, v1, v2, v3}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyDown$default(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;IIILjava/lang/Object;)V

    return-void
.end method

.method private final keyDone(I)V
    .registers 4

    .line 793
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->hide()V

    .line 794
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->onKeyDoneListener:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$OnKeyListener;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->currentEditText:Landroid/widget/EditText;

    invoke-interface {v0, v1, p1}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$OnKeyListener;->onKey(Landroid/view/View;I)V

    :cond_c
    return-void
.end method

.method private final keyDown(II)V
    .registers 6

    .line 895
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->currentEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_20

    .line 896
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const-string v2, "it.text"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    if-eqz v1, :cond_20

    .line 897
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, p2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    :cond_20
    return-void
.end method

.method static synthetic keyDown$default(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;IIILjava/lang/Object;)V
    .registers 5

    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    .line 894
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyDown(II)V

    return-void

    .line 0
    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: keyDown"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final keyExtra(I)V
    .registers 4

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "primaryCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KingKeyboard"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->onKeyExtraListener:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$OnKeyListener;

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->currentEditText:Landroid/widget/EditText;

    invoke-interface {v0, v1, p1}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$OnKeyListener;->onKey(Landroid/view/View;I)V

    :cond_1f
    return-void
.end method

.method private final keyInput(I)V
    .registers 5

    .line 828
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->currentEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_1a

    .line 829
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 830
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 832
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1a

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_1a
    return-void
.end method

.method private final keyModeChange()V
    .registers 4

    .line 769
    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyboardType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_c

    if-eq v0, v1, :cond_9

    goto :goto_e

    .line 774
    :cond_9
    iput v2, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyboardType:I

    goto :goto_e

    .line 771
    :cond_c
    iput v1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyboardType:I

    .line 778
    :goto_e
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->switchKeyboard()V

    return-void
.end method

.method private final keyMore()V
    .registers 1

    .line 821
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->switchKeyboard()V

    return-void
.end method

.method private final keyShift()V
    .registers 3

    .line 924
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->isAllCaps:Z

    if-eqz v0, :cond_c

    .line 925
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->getKeyboardNormal()Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->toLowerCaseKey(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)V

    goto :goto_13

    .line 927
    :cond_c
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->getKeyboardNormal()Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->toUpperCaseKey(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)V

    .line 931
    :goto_13
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->isAllCaps:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    .line 932
    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->isAllCaps:Z

    goto :goto_1e

    :cond_1b
    const/4 v0, 0x1

    .line 940
    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->isAllCaps:Z

    .line 944
    :goto_1e
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyboardView:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;

    if-eqz v0, :cond_2c

    .line 946
    iget-boolean v1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->isAllCaps:Z

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->setAllCaps(Z)V

    .line 947
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->currentKeyboard:Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->setKeyboard(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)V

    :cond_2c
    return-void
.end method

.method private final performKey(I[I)V
    .registers 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    .line 414
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyShift()V

    goto/16 :goto_c9

    :cond_8
    const/4 v0, -0x2

    if-ne p1, v0, :cond_10

    .line 415
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyModeChange()V

    goto/16 :goto_c9

    :cond_10
    const/4 v0, -0x3

    if-ne p1, v0, :cond_18

    .line 416
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyCancel(I)V

    goto/16 :goto_c9

    :cond_18
    const/4 v0, -0x4

    if-ne p1, v0, :cond_20

    .line 417
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyDone(I)V

    goto/16 :goto_c9

    :cond_20
    const/4 v0, -0x5

    if-ne p1, v0, :cond_28

    .line 418
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyDelete()V

    goto/16 :goto_c9

    :cond_28
    const/4 v0, -0x6

    if-ne p1, v0, :cond_30

    .line 419
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyAlt()V

    goto/16 :goto_c9

    :cond_30
    const/16 v0, -0x65

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3a

    .line 420
    invoke-direct {p0, v1}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyBack(Z)V

    goto/16 :goto_c9

    :cond_3a
    const/16 v0, -0x66

    const/4 v2, 0x1

    if-ne p1, v0, :cond_44

    .line 421
    invoke-direct {p0, v2}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyBack(Z)V

    goto/16 :goto_c9

    :cond_44
    const/16 v0, -0x67

    if-ne p1, v0, :cond_4d

    .line 422
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyMore()V

    goto/16 :goto_c9

    :cond_4d
    const/16 v0, -0xc9

    if-ne p1, v0, :cond_56

    .line 424
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyShift()V

    goto/16 :goto_c9

    :cond_56
    const/16 v0, -0xca

    if-ne p1, v0, :cond_5f

    .line 425
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyModeChange()V

    goto/16 :goto_c9

    :cond_5f
    const/16 v0, -0xcb

    if-ne p1, v0, :cond_68

    .line 426
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyCancel(I)V

    goto/16 :goto_c9

    :cond_68
    const/16 v0, -0xcc

    if-ne p1, v0, :cond_70

    .line 427
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyDone(I)V

    goto :goto_c9

    :cond_70
    const/16 v0, -0xcd

    if-ne p1, v0, :cond_78

    .line 428
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyDelete()V

    goto :goto_c9

    :cond_78
    const/16 v0, -0xce

    if-ne p1, v0, :cond_80

    .line 429
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyAlt()V

    goto :goto_c9

    :cond_80
    const/16 v0, -0xfb

    if-ne p1, v0, :cond_88

    .line 430
    invoke-direct {p0, v1}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyBack(Z)V

    goto :goto_c9

    :cond_88
    const/16 v0, -0xfc

    if-ne p1, v0, :cond_90

    .line 431
    invoke-direct {p0, v2}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyBack(Z)V

    goto :goto_c9

    :cond_90
    const/16 v0, -0xfd

    if-ne p1, v0, :cond_98

    .line 432
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyMore()V

    goto :goto_c9

    :cond_98
    const/16 v0, -0x12c

    const/16 v1, -0x3e7

    if-le v1, p1, :cond_9f

    goto :goto_a5

    :cond_9f
    if-lt v0, p1, :cond_a5

    .line 434
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyExtra(I)V

    goto :goto_c9

    :cond_a5
    :goto_a5
    const v0, 0x7fffffff

    const/16 v1, 0x20

    if-le v1, p1, :cond_ad

    goto :goto_b3

    :cond_ad
    if-lt v0, p1, :cond_b3

    .line 436
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyInput(I)V

    goto :goto_c9

    .line 438
    :cond_b3
    :goto_b3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "primaryCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KingKeyboard"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :goto_c9
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->onKeyboardActionListener:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;

    if-eqz v0, :cond_d0

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    :cond_d0
    return-void
.end method

.method private final playSoundEffect(I)V
    .registers 4

    .line 854
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->isPlaySoundEffect:Z

    if-eqz v0, :cond_2e

    .line 856
    :try_start_4
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_20

    .line 858
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->context:Landroid/content/Context;

    if-nez v0, :cond_11

    const-string v1, "context"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_11
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/media/AudioManager;

    if-nez v1, :cond_1c

    const/4 v0, 0x0

    :cond_1c
    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->audioManager:Landroid/media/AudioManager;

    .line 860
    :cond_20
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2e

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_27} :catch_28

    goto :goto_2e

    :catch_28
    move-exception p1

    const-string v0, "KingKeyboard"

    .line 862
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2e
    :goto_2e
    return-void
.end method

.method static synthetic playSoundEffect$default(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;IILjava/lang/Object;)V
    .registers 4

    if-nez p3, :cond_b

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_7

    const/4 p1, 0x5

    .line 853
    :cond_7
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->playSoundEffect(I)V

    return-void

    .line 0
    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: playSoundEffect"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final sendVibrationEffect()V
    .registers 1

    return-void
.end method

.method private final show()V
    .registers 4

    .line 601
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyboardViewGroup:Landroid/view/View;

    const-string v1, "keyboardViewGroup"

    if-nez v0, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1015
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-nez v0, :cond_35

    .line 602
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyboardViewGroup:Landroid/view/View;

    if-nez v0, :cond_1c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1016
    :cond_1c
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 604
    iget-boolean v1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->isBringToFront:Z

    if-eqz v1, :cond_26

    .line 605
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 607
    :cond_26
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 608
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->showAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_32

    const-string v2, "showAnimation"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_32
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_35
    return-void
.end method

.method private final switchKeyboard()V
    .registers 3

    .line 750
    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyboardType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    goto :goto_16

    .line 755
    :cond_9
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->getKeyboardNormalModeChange()Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->currentKeyboard:Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    goto :goto_16

    .line 752
    :cond_10
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->getKeyboardNormal()Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->currentKeyboard:Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    .line 759
    :goto_16
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyboardView:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;

    if-eqz v0, :cond_1f

    .line 760
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->currentKeyboard:Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->setKeyboard(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)V

    :cond_1f
    return-void
.end method

.method private final toLowerCaseKey(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)V
    .registers 6

    .line 979
    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    .line 980
    iget-object v1, v0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 981
    iget-object v1, v0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 982
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 984
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 985
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 986
    iget-object v0, v0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->codes:[I

    aput v1, v0, v2

    goto :goto_8

    :cond_3f
    return-void
.end method

.method private final toUpperCaseKey(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)V
    .registers 6

    .line 958
    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    .line 959
    iget-object v1, v0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 960
    iget-object v1, v0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 961
    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 963
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 964
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 965
    iget-object v0, v0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->codes:[I

    aput v1, v0, v2

    goto :goto_8

    :cond_3f
    return-void
.end method

.method private final viewFocus(Landroid/view/View;)V
    .registers 3

    .line 548
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_3a

    .line 549
    invoke-static {p1}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardUtilKt;->hideSystemInputMethod(Landroid/view/View;)V

    .line 550
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->disableShowSoftInput(Landroid/widget/EditText;)V

    .line 551
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 552
    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->currentEditText:Landroid/widget/EditText;

    .line 553
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->getKeyboardTypeArray()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2c
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyboardType:I

    .line 554
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->switchKeyboard()V

    .line 555
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->show()V

    :cond_3a
    return-void
.end method


# virtual methods
.method public hide()V
    .registers 4

    .line 617
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyboardViewGroup:Landroid/view/View;

    const-string v1, "keyboardViewGroup"

    if-nez v0, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1018
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_2a

    .line 618
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->keyboardViewGroup:Landroid/view/View;

    if-nez v0, :cond_1b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 619
    :cond_1b
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 620
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->hideAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_27

    const-string v2, "hideAnimation"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_27
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2a
    return-void
.end method

.method public initKeyboardView(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final register(Landroid/widget/EditText;I)V
    .registers 5

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->getEditTextArray()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->getKeyboardTypeArray()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->onTouchListener:Landroid/view/View$OnTouchListener;

    if-nez p2, :cond_30

    const-string v0, "onTouchListener"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_30
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final setOnKeyDoneListener(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$OnKeyListener;)V
    .registers 2

    .line 716
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->onKeyDoneListener:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$OnKeyListener;

    return-void
.end method
