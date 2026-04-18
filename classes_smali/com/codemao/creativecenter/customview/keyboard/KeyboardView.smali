.class public Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;
.super Landroid/view/View;
.source "KeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;,
        Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;
    }
.end annotation


# static fields
.field private static final KEY_DELETE:[I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final LONG_PRESSABLE_STATE_SET:[I

.field private static MAX_NEARBY_KEYS:I


# instance fields
.field private mAbortKey:Z

.field private mBuffer:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mClipRegion:Landroid/graphics/Rect;

.field private final mCoordinates:[I

.field private mCurrentKey:I

.field private mCurrentKeyIndex:I

.field private mCurrentKeyTime:J

.field private mDirtyRect:Landroid/graphics/Rect;

.field private mDisambiguateSwipe:Z

.field private mDistances:[I

.field private mDownKey:I

.field private mDownTime:J

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mHandler:Landroid/os/Handler;

.field private mInMultiTap:Z

.field private mInvalidatedKey:Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

.field private mKeyBackground:Landroid/graphics/drawable/Drawable;

.field private mKeyIndices:[I

.field private mKeyTextColor:I

.field private mKeyTextSize:I

.field private mKeyboard:Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

.field private mKeyboardActionListener:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;

.field private mKeyboardChanged:Z

.field private mKeys:[Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

.field private mLabelTextSize:I

.field private mLastCodeX:I

.field private mLastCodeY:I

.field private mLastKey:I

.field private mLastKeyTime:J

.field private mLastMoveTime:J

.field private mLastSentIndex:I

.field private mLastTapTime:J

.field private mLastX:I

.field private mLastY:I

.field private mMiniKeyboard:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

.field private mMiniKeyboardCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMiniKeyboardContainer:Landroid/view/View;

.field private mMiniKeyboardOffsetX:I

.field private mMiniKeyboardOffsetY:I

.field private mMiniKeyboardOnScreen:Z

.field private mOldPointerCount:I

.field private mOldPointerX:F

.field private mOldPointerY:F

.field private mPadding:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mPopupKeyboard:Landroid/widget/PopupWindow;

.field private mPopupLayout:I

.field private mPopupParent:Landroid/view/View;

.field private mPopupPreviewX:I

.field private mPopupPreviewY:I

.field private mPopupX:I

.field private mPopupY:I

.field private mPossiblePoly:Z

.field private mPreviewCentered:Z

.field private mPreviewHeight:I

.field private mPreviewLabel:Ljava/lang/StringBuilder;

.field private mPreviewOffset:I

.field private mPreviewPopup:Landroid/widget/PopupWindow;

.field private mPreviewText:Landroid/widget/TextView;

.field private mPreviewTextSizeLarge:I

.field private mProximityCorrectOn:Z

.field private mProximityThreshold:I

.field private mRepeatKeyIndex:I

.field private mShadowColor:I

.field private mShadowRadius:F

.field private mShowPreview:Z

.field private mStartX:I

.field private mStartY:I

.field private mSwipeThreshold:I

.field private mSwipeTracker:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;

.field private mTapCount:I

.field private mVerticalCorrection:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, -0x5

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 135
    sput-object v1, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->KEY_DELETE:[I

    new-array v0, v0, [I

    .line 136
    sget v1, Lcom/codemao/creativecenter/R$styleable;->Creative_KeyboardViewPreviewState_android_state_long_pressable:I

    aput v1, v0, v3

    sput-object v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    .line 230
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->LONGPRESS_TIMEOUT:I

    const/16 v0, 0xc

    .line 232
    sput v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->MAX_NEARBY_KEYS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 263
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 267
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 12

    .line 271
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    .line 140
    iput v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKeyIndex:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 155
    iput-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCoordinates:[I

    const/4 v1, 0x0

    .line 182
    iput-boolean v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewCentered:Z

    const/4 v2, 0x1

    .line 183
    iput-boolean v2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mShowPreview:Z

    .line 203
    iput v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKey:I

    .line 204
    iput v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mDownKey:I

    const/16 v3, 0xc

    new-array v3, v3, [I

    .line 207
    iput-object v3, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyIndices:[I

    .line 211
    iput v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mRepeatKeyIndex:I

    .line 215
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 217
    new-instance v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;-><init>(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$1;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mSwipeTracker:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;

    .line 222
    iput v2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mOldPointerCount:I

    .line 233
    sget v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->MAX_NEARBY_KEYS:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mDistances:[I

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    .line 246
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 273
    sget-object v0, Lcom/codemao/creativecenter/R$styleable;->Creative_KeyboardView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string p3, "layout_inflater"

    .line 278
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    .line 283
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p4

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_56
    if-ge v0, p4, :cond_e2

    .line 286
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 288
    sget v6, Lcom/codemao/creativecenter/R$styleable;->Creative_KeyboardView_android_keyBackground:I

    if-ne v5, v6, :cond_68

    .line 289
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_de

    .line 290
    :cond_68
    sget v6, Lcom/codemao/creativecenter/R$styleable;->Creative_KeyboardView_android_verticalCorrection:I

    if-ne v5, v6, :cond_74

    .line 291
    invoke-virtual {p2, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mVerticalCorrection:I

    goto/16 :goto_de

    .line 292
    :cond_74
    sget v6, Lcom/codemao/creativecenter/R$styleable;->Creative_KeyboardView_android_keyPreviewLayout:I

    if-ne v5, v6, :cond_7d

    .line 293
    invoke-virtual {p2, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    goto :goto_de

    .line 294
    :cond_7d
    sget v6, Lcom/codemao/creativecenter/R$styleable;->Creative_KeyboardView_android_keyPreviewOffset:I

    if-ne v5, v6, :cond_88

    .line 295
    invoke-virtual {p2, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewOffset:I

    goto :goto_de

    .line 296
    :cond_88
    sget v6, Lcom/codemao/creativecenter/R$styleable;->Creative_KeyboardView_android_keyPreviewHeight:I

    if-ne v5, v6, :cond_95

    const/16 v6, 0x50

    .line 297
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewHeight:I

    goto :goto_de

    .line 298
    :cond_95
    sget v6, Lcom/codemao/creativecenter/R$styleable;->Creative_KeyboardView_android_keyTextSize:I

    if-ne v5, v6, :cond_a2

    const/16 v6, 0x12

    .line 299
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyTextSize:I

    goto :goto_de

    .line 300
    :cond_a2
    sget v6, Lcom/codemao/creativecenter/R$styleable;->Creative_KeyboardView_android_keyTextColor:I

    if-ne v5, v6, :cond_b0

    const v6, -0xcccccd

    .line 301
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyTextColor:I

    goto :goto_de

    .line 302
    :cond_b0
    sget v6, Lcom/codemao/creativecenter/R$styleable;->Creative_KeyboardView_android_labelTextSize:I

    if-ne v5, v6, :cond_bd

    const/16 v6, 0xe

    .line 303
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLabelTextSize:I

    goto :goto_de

    .line 304
    :cond_bd
    sget v6, Lcom/codemao/creativecenter/R$styleable;->Creative_KeyboardView_android_popupLayout:I

    if-ne v5, v6, :cond_c8

    .line 305
    invoke-virtual {p2, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupLayout:I

    goto :goto_de

    .line 306
    :cond_c8
    sget v6, Lcom/codemao/creativecenter/R$styleable;->Creative_KeyboardView_android_shadowColor:I

    if-ne v5, v6, :cond_d3

    .line 307
    invoke-virtual {p2, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mShadowColor:I

    goto :goto_de

    .line 308
    :cond_d3
    sget v6, Lcom/codemao/creativecenter/R$styleable;->Creative_KeyboardView_android_shadowRadius:I

    if-ne v5, v6, :cond_de

    const/4 v6, 0x0

    .line 309
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mShadowRadius:F

    :cond_de
    :goto_de
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_56

    .line 313
    :cond_e2
    new-instance p2, Landroid/widget/PopupWindow;

    invoke-direct {p2, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_107

    .line 315
    invoke-virtual {p3, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 316
    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewTextSizeLarge:I

    .line 317
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object p3, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 318
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_109

    .line 320
    :cond_107
    iput-boolean v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mShowPreview:Z

    .line 323
    :goto_109
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 325
    new-instance p2, Landroid/widget/PopupWindow;

    invoke-direct {p2, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    .line 326
    invoke-virtual {p2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    iput-object p0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupParent:Landroid/view/View;

    .line 332
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 333
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 334
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    int-to-float p3, v1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 335
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 336
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    const/16 p3, 0xff

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 338
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPadding:Landroid/graphics/Rect;

    .line 339
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    .line 340
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    const/high16 p2, 0x43fa0000  # 500.0f

    .line 342
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    mul-float p3, p3, p2

    float-to-int p2, p3

    iput p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mSwipeThreshold:I

    const-string p2, "audio"

    .line 346
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 348
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->resetMultiTap()V

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;I)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->showKey(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)I
    .registers 1

    .line 72
    iget p0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mStartX:I

    return p0
.end method

.method static synthetic access$1100(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)I
    .registers 1

    .line 72
    iget p0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mStartY:I

    return p0
.end method

.method static synthetic access$1200(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;IIIJ)V
    .registers 6

    .line 72
    invoke-direct/range {p0 .. p5}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->detectAndSendKey(IIIJ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyboardActionListener:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)V
    .registers 1

    .line 72
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->dismissPopupKeyboard()V

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)Landroid/widget/TextView;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)Z
    .registers 1

    .line 72
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->repeatKey()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;Landroid/view/MotionEvent;)Z
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->openPopupIfRequired(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)Z
    .registers 1

    .line 72
    iget-boolean p0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPossiblePoly:Z

    return p0
.end method

.method static synthetic access$600(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mSwipeTracker:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;

    return-object p0
.end method

.method static synthetic access$700(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)I
    .registers 1

    .line 72
    iget p0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mSwipeThreshold:I

    return p0
.end method

.method static synthetic access$800(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)Z
    .registers 1

    .line 72
    iget-boolean p0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mDisambiguateSwipe:Z

    return p0
.end method

.method static synthetic access$900(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)I
    .registers 1

    .line 72
    iget p0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mDownKey:I

    return p0
.end method

.method private adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    .line 577
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyboard:Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_24

    const/4 v0, 0x0

    .line 578
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 579
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    :cond_24
    return-object p1
.end method

.method private checkMultiTap(JI)V
    .registers 12

    const/4 v0, -0x1

    if-ne p3, v0, :cond_4

    return-void

    .line 1384
    :cond_4
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeys:[Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    aget-object v1, v1, p3

    .line 1385
    iget-object v1, v1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->codes:[I

    array-length v2, v1

    const-wide/16 v3, 0x258

    const/4 v5, 0x1

    if-le v2, v5, :cond_28

    .line 1386
    iput-boolean v5, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mInMultiTap:Z

    .line 1387
    iget-wide v6, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastTapTime:J

    add-long/2addr v6, v3

    cmp-long v2, p1, v6

    if-gez v2, :cond_25

    iget p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastSentIndex:I

    if-ne p3, p1, :cond_25

    .line 1389
    iget p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mTapCount:I

    add-int/2addr p1, v5

    array-length p2, v1

    rem-int/2addr p1, p2

    iput p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mTapCount:I

    return-void

    .line 1392
    :cond_25
    iput v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mTapCount:I

    return-void

    .line 1396
    :cond_28
    iget-wide v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastTapTime:J

    add-long/2addr v0, v3

    cmp-long v2, p1, v0

    if-gtz v2, :cond_33

    iget p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastSentIndex:I

    if-eq p3, p1, :cond_36

    .line 1397
    :cond_33
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->resetMultiTap()V

    :cond_36
    return-void
.end method

.method private computeProximityThreshold(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    .line 606
    :cond_3
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeys:[Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    if-nez p1, :cond_8

    return-void

    .line 608
    :cond_8
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    if-ge v1, v0, :cond_1e

    .line 611
    aget-object v3, p1, v1

    .line 612
    iget v4, v3, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->width:I

    iget v5, v3, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->height:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v3, v3, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->gap:I

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1e
    if-ltz v2, :cond_32

    if-nez v0, :cond_23

    goto :goto_32

    :cond_23
    int-to-float p1, v2

    const v1, 0x3fb33333  # 1.4f

    mul-float p1, p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 615
    iput p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mProximityThreshold:I

    mul-int p1, p1, p1

    .line 616
    iput p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mProximityThreshold:I

    :cond_32
    :goto_32
    return-void
.end method

.method private detectAndSendKey(IIIJ)V
    .registers 11

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4f

    .line 806
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeys:[Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    array-length v2, v1

    if-ge p1, v2, :cond_4f

    .line 807
    aget-object v1, v1, p1

    .line 808
    iget-object v2, v1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_19

    .line 809
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyboardActionListener:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;

    invoke-interface {p2, v2}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 810
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyboardActionListener:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;

    invoke-interface {p2, v0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    goto :goto_4b

    .line 812
    :cond_19
    iget-object v2, v1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 814
    sget v4, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->MAX_NEARBY_KEYS:I

    new-array v4, v4, [I

    .line 815
    invoke-static {v4, v0}, Ljava/util/Arrays;->fill([II)V

    .line 816
    invoke-direct {p0, p2, p3, v4}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->getKeyIndices(II[I)I

    .line 818
    iget-boolean p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mInMultiTap:Z

    if-eqz p2, :cond_41

    .line 819
    iget p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mTapCount:I

    if-eq p2, v0, :cond_39

    .line 820
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyboardActionListener:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;

    const/4 p3, -0x5

    sget-object v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->KEY_DELETE:[I

    invoke-interface {p2, p3, v0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    goto :goto_3b

    .line 822
    :cond_39
    iput v3, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mTapCount:I

    .line 824
    :goto_3b
    iget-object p2, v1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->codes:[I

    iget p3, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mTapCount:I

    aget v2, p2, p3

    .line 826
    :cond_41
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyboardActionListener:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;

    invoke-interface {p2, v2, v4}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 827
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyboardActionListener:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;

    invoke-interface {p2, v2}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    .line 829
    :goto_4b
    iput p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastSentIndex:I

    .line 830
    iput-wide p4, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastTapTime:J

    :cond_4f
    return-void
.end method

.method private dismissPopupKeyboard()V
    .registers 2

    .line 1360
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1361
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 1362
    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboardOnScreen:Z

    .line 1363
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->invalidateAllKeys()V

    :cond_13
    return-void
.end method

.method private getKeyIndices(II[I)I
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 755
    iget-object v4, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeys:[Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    .line 758
    iget v5, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mProximityThreshold:I

    add-int/lit8 v5, v5, 0x1

    .line 759
    iget-object v6, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mDistances:[I

    const v7, 0x7fffffff

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([II)V

    .line 760
    iget-object v6, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyboard:Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    invoke-virtual {v6, v1, v2}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->getNearestKeys(II)[I

    move-result-object v6

    .line 761
    array-length v7, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    :goto_21
    if-ge v10, v7, :cond_89

    .line 763
    aget v13, v6, v10

    aget-object v13, v4, v13

    .line 765
    invoke-virtual {v13, v1, v2}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->isInside(II)Z

    move-result v14

    if-eqz v14, :cond_2f

    .line 767
    aget v11, v6, v10

    .line 770
    :cond_2f
    iget-boolean v15, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mProximityCorrectOn:Z

    if-eqz v15, :cond_3c

    .line 771
    invoke-virtual {v13, v1, v2}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v15

    iget v8, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mProximityThreshold:I

    if-lt v15, v8, :cond_3f

    goto :goto_3d

    :cond_3c
    const/4 v15, 0x0

    :goto_3d
    if-eqz v14, :cond_81

    :cond_3f
    iget-object v8, v13, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->codes:[I

    aget v14, v8, v9

    const/16 v9, 0x20

    if-le v14, v9, :cond_81

    .line 775
    array-length v8, v8

    if-ge v15, v5, :cond_4d

    .line 778
    aget v12, v6, v10

    move v5, v15

    :cond_4d
    if-nez v3, :cond_50

    goto :goto_81

    :cond_50
    const/4 v9, 0x0

    .line 783
    :goto_51
    iget-object v14, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mDistances:[I

    array-length v1, v14

    if-ge v9, v1, :cond_81

    .line 784
    aget v1, v14, v9

    if-le v1, v15, :cond_7a

    add-int v1, v9, v8

    .line 786
    array-length v2, v14

    sub-int/2addr v2, v9

    sub-int/2addr v2, v8

    invoke-static {v14, v9, v14, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 788
    array-length v2, v3

    sub-int/2addr v2, v9

    sub-int/2addr v2, v8

    invoke-static {v3, v9, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    :goto_69
    if-ge v1, v8, :cond_81

    add-int v2, v9, v1

    .line 791
    iget-object v14, v13, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->codes:[I

    aget v14, v14, v1

    aput v14, v3, v2

    .line 792
    iget-object v14, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mDistances:[I

    aput v15, v14, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    :cond_7a
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    goto :goto_51

    :cond_81
    :goto_81
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v9, 0x0

    goto :goto_21

    :cond_89
    const/4 v1, -0x1

    if-ne v11, v1, :cond_8d

    move v11, v12

    :cond_8d
    return v11
.end method

.method private getPreviewText(Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;)Ljava/lang/CharSequence;
    .registers 5

    .line 838
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mInMultiTap:Z

    if-eqz v0, :cond_21

    .line 840
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 841
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->codes:[I

    iget v2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mTapCount:I

    if-gez v2, :cond_13

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    aget p1, p1, v1

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 842
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 844
    :cond_21
    iget-object p1, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private initGestureDetector()V
    .registers 4

    .line 382
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_18

    .line 383
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$2;

    invoke-direct {v2, p0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$2;-><init>(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    .line 435
    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    :cond_18
    return-void
.end method

.method private onBufferDraw()V
    .registers 20

    move-object/from16 v0, p0

    .line 639
    iget-object v1, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_c

    iget-boolean v4, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyboardChanged:Z

    if-eqz v4, :cond_4e

    :cond_c
    if-eqz v1, :cond_28

    .line 640
    iget-boolean v4, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyboardChanged:Z

    if-eqz v4, :cond_49

    .line 641
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    if-ne v1, v4, :cond_28

    iget-object v1, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    if-eq v1, v4, :cond_49

    .line 643
    :cond_28
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 644
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 645
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 646
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v4, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 648
    :cond_49
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->invalidateAllKeys()V

    .line 649
    iput-boolean v2, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyboardChanged:Z

    .line 652
    :cond_4e
    iget-object v1, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyboard:Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    if-nez v1, :cond_53

    return-void

    .line 654
    :cond_53
    iget-object v1, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 655
    iget-object v4, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 656
    iget-object v1, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 658
    iget-object v9, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 659
    iget-object v1, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 660
    iget-object v5, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 661
    iget-object v6, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPadding:Landroid/graphics/Rect;

    .line 662
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    .line 663
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    .line 664
    iget-object v10, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeys:[Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    .line 665
    iget-object v11, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mInvalidatedKey:Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    .line 667
    iget v12, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyTextColor:I

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v11, :cond_a6

    .line 669
    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v12

    if-eqz v12, :cond_a6

    .line 671
    iget v12, v11, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->x:I

    add-int v13, v12, v7

    sub-int/2addr v13, v3

    iget v14, v5, Landroid/graphics/Rect;->left:I

    if-gt v13, v14, :cond_a6

    iget v13, v11, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->y:I

    add-int v14, v13, v8

    sub-int/2addr v14, v3

    iget v15, v5, Landroid/graphics/Rect;->top:I

    if-gt v14, v15, :cond_a6

    iget v14, v11, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->width:I

    add-int/2addr v12, v14

    add-int/2addr v12, v7

    add-int/2addr v12, v3

    iget v14, v5, Landroid/graphics/Rect;->right:I

    if-lt v12, v14, :cond_a6

    iget v12, v11, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->height:I

    add-int/2addr v13, v12

    add-int/2addr v13, v8

    add-int/2addr v13, v3

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-lt v13, v5, :cond_a6

    const/4 v5, 0x1

    goto :goto_a7

    :cond_a6
    const/4 v5, 0x0

    .line 678
    :goto_a7
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v2, v12}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 679
    array-length v12, v10

    const/4 v13, 0x0

    :goto_ae
    if-ge v13, v12, :cond_1c8

    .line 681
    aget-object v15, v10, v13

    if-eqz v5, :cond_bf

    if-eq v11, v15, :cond_bf

    move-object/from16 v17, v1

    move/from16 v16, v5

    move-object/from16 v18, v6

    const/4 v6, 0x0

    goto/16 :goto_1bc

    .line 685
    :cond_bf
    invoke-virtual {v15}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->getCurrentDrawableState()[I

    move-result-object v14

    .line 686
    invoke-virtual {v1, v14}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 689
    iget-object v14, v15, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-nez v14, :cond_cc

    const/4 v14, 0x0

    goto :goto_d4

    :cond_cc
    invoke-direct {v0, v14}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 691
    :goto_d4
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 692
    iget v2, v15, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->width:I

    move/from16 v16, v5

    iget v5, v3, Landroid/graphics/Rect;->right:I

    if-ne v2, v5, :cond_e6

    iget v5, v15, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->height:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-eq v5, v3, :cond_ec

    .line 694
    :cond_e6
    iget v3, v15, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->height:I

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 696
    :cond_ec
    iget v2, v15, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->x:I

    add-int/2addr v2, v7

    int-to-float v2, v2

    iget v3, v15, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->y:I

    add-int/2addr v3, v8

    int-to-float v3, v3

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 697
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v2, 0x2

    if-eqz v14, :cond_15b

    .line 701
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_115

    iget-object v3, v15, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->codes:[I

    array-length v3, v3

    if-ge v3, v2, :cond_115

    .line 702
    iget v3, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLabelTextSize:I

    int-to-float v3, v3

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 703
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_120

    .line 705
    :cond_115
    iget v3, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyTextSize:I

    int-to-float v3, v3

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 706
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 709
    :goto_120
    iget v3, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mShadowRadius:F

    iget v5, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mShadowColor:I

    const/4 v2, 0x0

    invoke-virtual {v9, v3, v2, v2, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 711
    iget v3, v15, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->width:I

    iget v5, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    iget v2, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v2

    const/4 v2, 0x2

    div-int/2addr v3, v2

    add-int/2addr v3, v5

    int-to-float v3, v3

    iget v5, v15, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->height:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v2

    iget v2, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    const/4 v2, 0x2

    div-int/2addr v5, v2

    int-to-float v2, v5

    .line 715
    invoke-virtual {v9}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    invoke-virtual {v9}, Landroid/graphics/Paint;->descent()F

    move-result v17

    sub-float v5, v5, v17

    const/high16 v17, 0x40000000  # 2.0f

    div-float v5, v5, v17

    add-float/2addr v2, v5

    iget v5, v6, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v2, v5

    .line 711
    invoke-virtual {v4, v14, v3, v2, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 718
    invoke-virtual {v9, v2, v2, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_1aa

    .line 719
    :cond_15b
    iget-object v2, v15, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1aa

    .line 720
    iget v3, v15, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->width:I

    iget v5, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    iget v5, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v5

    .line 721
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v3, v2

    const/4 v2, 0x2

    div-int/2addr v3, v2

    iget v5, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    .line 722
    iget v5, v15, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->height:I

    iget v14, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v14

    iget v14, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v14

    iget-object v14, v15, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 723
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    sub-int/2addr v5, v14

    div-int/2addr v5, v2

    iget v2, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    int-to-float v2, v3

    int-to-float v14, v5

    .line 724
    invoke-virtual {v4, v2, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 725
    iget-object v2, v15, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 726
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    move-object/from16 v17, v1

    iget-object v1, v15, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    move-object/from16 v18, v6

    const/4 v6, 0x0

    .line 725
    invoke-virtual {v2, v6, v6, v14, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 727
    iget-object v1, v15, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v1, v3

    int-to-float v1, v1

    neg-int v2, v5

    int-to-float v2, v2

    .line 728
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1af

    :cond_1aa
    :goto_1aa
    move-object/from16 v17, v1

    move-object/from16 v18, v6

    const/4 v6, 0x0

    .line 730
    :goto_1af
    iget v1, v15, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->x:I

    neg-int v1, v1

    sub-int/2addr v1, v7

    int-to-float v1, v1

    iget v2, v15, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->y:I

    neg-int v2, v2

    sub-int/2addr v2, v8

    int-to-float v2, v2

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1bc
    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v16

    move-object/from16 v1, v17

    move-object/from16 v6, v18

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_ae

    :cond_1c8
    const/4 v1, 0x0

    .line 732
    iput-object v1, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mInvalidatedKey:Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    .line 734
    iget-boolean v1, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v1, :cond_1de

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 736
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v8, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 749
    :cond_1de
    iget-object v1, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 751
    iget-object v1, v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method private onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z
    .registers 19

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    .line 1165
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1166
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1167
    iget v3, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mVerticalCorrection:I

    neg-int v4, v3

    if-lt v2, v4, :cond_1e

    add-int/2addr v2, v3

    .line 1169
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 1170
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    const/4 v7, 0x0

    .line 1171
    invoke-direct {v6, v1, v2, v7}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->getKeyIndices(II[I)I

    move-result v7

    move/from16 v8, p2

    .line 1172
    iput-boolean v8, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPossiblePoly:Z

    if-nez v3, :cond_36

    .line 1175
    iget-object v8, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mSwipeTracker:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;

    invoke-virtual {v8}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;->clear()V

    .line 1176
    :cond_36
    iget-object v8, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mSwipeTracker:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;

    invoke-virtual {v8, v0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$SwipeTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1179
    iget-boolean v8, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mAbortKey:Z

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/4 v11, -0x1

    if-eqz v8, :cond_49

    if-eqz v3, :cond_49

    if-eq v3, v9, :cond_49

    .line 1181
    iput v11, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mRepeatKeyIndex:I

    return v10

    .line 1185
    :cond_49
    iget-object v8, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v8, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    const/4 v12, 0x4

    if-eqz v8, :cond_60

    .line 1186
    invoke-direct {v6, v11}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->showPreview(I)V

    .line 1187
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1188
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    return v10

    .line 1194
    :cond_60
    iget-boolean v8, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v8, :cond_69

    if-eq v3, v9, :cond_69

    .line 1195
    iput v11, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mRepeatKeyIndex:I

    return v10

    :cond_69
    const-wide/16 v13, 0x0

    if-eqz v3, :cond_14e

    if-eq v3, v10, :cond_e5

    const/4 v15, 0x2

    if-eq v3, v15, :cond_88

    if-eq v3, v9, :cond_76

    goto/16 :goto_1be

    .line 1296
    :cond_76
    invoke-direct/range {p0 .. p0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->removeMessages()V

    .line 1297
    invoke-direct/range {p0 .. p0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->dismissPopupKeyboard()V

    .line 1298
    iput-boolean v10, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mAbortKey:Z

    .line 1299
    invoke-direct {v6, v11}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->showPreview(I)V

    .line 1300
    iget v0, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKey:I

    invoke-virtual {v6, v0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->invalidateKey(I)V

    goto/16 :goto_1be

    :cond_88
    if-eq v7, v11, :cond_c3

    .line 1237
    iget v3, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKey:I

    if-ne v3, v11, :cond_97

    .line 1238
    iput v7, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKey:I

    .line 1239
    iget-wide v13, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mDownTime:J

    sub-long v13, v4, v13

    iput-wide v13, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKeyTime:J

    goto :goto_c3

    :cond_97
    if-ne v7, v3, :cond_a4

    .line 1242
    iget-wide v8, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKeyTime:J

    iget-wide v13, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastMoveTime:J

    sub-long v13, v4, v13

    add-long/2addr v8, v13

    iput-wide v8, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKeyTime:J

    const/4 v8, 0x1

    goto :goto_c4

    .line 1244
    :cond_a4
    iget v3, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mRepeatKeyIndex:I

    if-ne v3, v11, :cond_c3

    .line 1245
    invoke-direct/range {p0 .. p0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->resetMultiTap()V

    .line 1246
    iget v3, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKey:I

    iput v3, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastKey:I

    .line 1247
    iget v3, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastX:I

    iput v3, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastCodeX:I

    .line 1248
    iget v3, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastY:I

    iput v3, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastCodeY:I

    .line 1249
    iget-wide v8, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v8, v4

    iget-wide v10, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v8, v10

    iput-wide v8, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastKeyTime:J

    .line 1251
    iput v7, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKey:I

    .line 1252
    iput-wide v13, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKeyTime:J

    :cond_c3
    :goto_c3
    const/4 v8, 0x0

    :goto_c4
    if-nez v8, :cond_dc

    .line 1258
    iget-object v3, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v12}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v3, -0x1

    if-eq v7, v3, :cond_dc

    .line 1261
    iget-object v3, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v12, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1262
    iget-object v3, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mHandler:Landroid/os/Handler;

    sget v7, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->LONGPRESS_TIMEOUT:I

    int-to-long v7, v7

    invoke-virtual {v3, v0, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1265
    :cond_dc
    iget v0, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKey:I

    invoke-direct {v6, v0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->showPreview(I)V

    .line 1266
    iput-wide v4, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastMoveTime:J

    goto/16 :goto_1be

    .line 1270
    :cond_e5
    invoke-direct/range {p0 .. p0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->removeMessages()V

    .line 1271
    iget v0, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKey:I

    if-ne v7, v0, :cond_f6

    .line 1272
    iget-wide v8, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKeyTime:J

    iget-wide v10, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastMoveTime:J

    sub-long v10, v4, v10

    add-long/2addr v8, v10

    iput-wide v8, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKeyTime:J

    goto :goto_109

    .line 1274
    :cond_f6
    invoke-direct/range {p0 .. p0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->resetMultiTap()V

    .line 1275
    iget v0, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKey:I

    iput v0, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastKey:I

    .line 1276
    iget-wide v8, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v8, v4

    iget-wide v10, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v8, v10

    iput-wide v8, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastKeyTime:J

    .line 1277
    iput v7, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKey:I

    .line 1278
    iput-wide v13, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKeyTime:J

    .line 1280
    :goto_109
    iget-wide v8, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKeyTime:J

    iget-wide v10, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastKeyTime:J

    cmp-long v0, v8, v10

    if-gez v0, :cond_125

    const-wide/16 v10, 0x46

    cmp-long v0, v8, v10

    if-gez v0, :cond_125

    iget v0, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastKey:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_126

    .line 1282
    iput v0, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKey:I

    .line 1283
    iget v0, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastCodeX:I

    .line 1284
    iget v1, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastCodeY:I

    move v8, v0

    move v9, v1

    goto :goto_128

    :cond_125
    const/4 v3, -0x1

    :cond_126
    move v8, v1

    move v9, v2

    .line 1286
    :goto_128
    invoke-direct {v6, v3}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->showPreview(I)V

    .line 1287
    iget-object v0, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyIndices:[I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 1289
    iget v0, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mRepeatKeyIndex:I

    if-ne v0, v3, :cond_145

    iget-boolean v0, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-nez v0, :cond_145

    iget-boolean v0, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mAbortKey:Z

    if-nez v0, :cond_145

    .line 1290
    iget v1, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKey:I

    move-object/from16 v0, p0

    move v2, v8

    move v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->detectAndSendKey(IIIJ)V

    .line 1292
    :cond_145
    invoke-virtual {v6, v7}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->invalidateKey(I)V

    const/4 v3, -0x1

    .line 1293
    iput v3, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mRepeatKeyIndex:I

    move v1, v8

    move v2, v9

    goto :goto_1be

    :cond_14e
    const/4 v3, -0x1

    const/4 v8, 0x0

    .line 1201
    iput-boolean v8, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mAbortKey:Z

    .line 1202
    iput v1, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mStartX:I

    .line 1203
    iput v2, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mStartY:I

    .line 1204
    iput v1, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastCodeX:I

    .line 1205
    iput v2, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastCodeY:I

    .line 1206
    iput-wide v13, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastKeyTime:J

    .line 1207
    iput-wide v13, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKeyTime:J

    .line 1208
    iput v3, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastKey:I

    .line 1209
    iput v7, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKey:I

    .line 1210
    iput v7, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mDownKey:I

    .line 1211
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iput-wide v10, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mDownTime:J

    .line 1212
    iput-wide v10, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastMoveTime:J

    .line 1213
    invoke-direct {v6, v4, v5, v7}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->checkMultiTap(JI)V

    .line 1214
    iget-object v4, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyboardActionListener:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;

    if-eq v7, v3, :cond_17d

    .line 1215
    iget-object v3, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeys:[Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v8, v3, v5

    goto :goto_17f

    :cond_17d
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1214
    :goto_17f
    invoke-interface {v4, v8}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;->onPress(I)V

    .line 1216
    iget v3, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKey:I

    if-ltz v3, :cond_1a8

    iget-object v4, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeys:[Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    aget-object v4, v4, v3

    iget-boolean v4, v4, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->repeatable:Z

    if-eqz v4, :cond_1a8

    .line 1217
    iput v3, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mRepeatKeyIndex:I

    .line 1218
    iget-object v3, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1219
    iget-object v4, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x12c

    invoke-virtual {v4, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1220
    invoke-direct/range {p0 .. p0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->repeatKey()Z

    .line 1222
    iget-boolean v3, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mAbortKey:Z

    if-eqz v3, :cond_1a8

    const/4 v3, -0x1

    .line 1223
    iput v3, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mRepeatKeyIndex:I

    goto :goto_1be

    :cond_1a8
    const/4 v3, -0x1

    .line 1227
    iget v4, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKey:I

    if-eq v4, v3, :cond_1bb

    .line 1228
    iget-object v3, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v12, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1229
    iget-object v3, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mHandler:Landroid/os/Handler;

    sget v4, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->LONGPRESS_TIMEOUT:I

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1231
    :cond_1bb
    invoke-direct {v6, v7}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->showPreview(I)V

    .line 1303
    :goto_1be
    iput v1, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastX:I

    .line 1304
    iput v2, v6, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastY:I

    const/4 v0, 0x1

    return v0
.end method

.method private openPopupIfRequired(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1002
    iget p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupLayout:I

    const/4 v0, 0x0

    if-nez p1, :cond_6

    return v0

    .line 1005
    :cond_6
    iget p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKey:I

    if-ltz p1, :cond_20

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeys:[Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    array-length v2, v1

    if-lt p1, v2, :cond_10

    goto :goto_20

    .line 1009
    :cond_10
    aget-object p1, v1, p1

    .line 1010
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->onLongPress(Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    .line 1012
    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mAbortKey:Z

    const/4 v0, -0x1

    .line 1013
    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->showPreview(I)V

    :cond_1f
    return p1

    :cond_20
    :goto_20
    return v0
.end method

.method private removeMessages()V
    .registers 3

    .line 1346
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_14

    const/4 v1, 0x3

    .line 1347
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1348
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1349
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_14
    return-void
.end method

.method private repeatKey()Z
    .registers 8

    .line 1309
    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mRepeatKeyIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    .line 1310
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeys:[Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    aget-object v0, v1, v0

    .line 1311
    iget v2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKey:I

    iget v3, v0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->x:I

    iget v4, v0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->y:I

    iget-wide v5, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastTapTime:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->detectAndSendKey(IIIJ)V

    const/4 v0, 0x1

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method private resetMultiTap()V
    .registers 4

    const/4 v0, -0x1

    .line 1376
    iput v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastSentIndex:I

    const/4 v0, 0x0

    .line 1377
    iput v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mTapCount:I

    const-wide/16 v1, -0x1

    .line 1378
    iput-wide v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mLastTapTime:J

    .line 1379
    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mInMultiTap:Z

    return-void
.end method

.method private showKey(I)V
    .registers 13

    .line 893
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 894
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeys:[Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    if-ltz p1, :cond_15b

    .line 895
    array-length v2, v1

    if-lt p1, v2, :cond_b

    goto/16 :goto_15b

    .line 896
    :cond_b
    aget-object p1, v1, p1

    .line 897
    iget-object v1, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_25

    .line 898
    iget-object v6, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 899
    iget-object v7, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1c

    move-object v1, v7

    .line 898
    :cond_1c
    invoke-virtual {v6, v4, v4, v4, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 900
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_61

    .line 902
    :cond_25
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 903
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->getPreviewText(Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 904
    iget-object v1, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v1, :cond_52

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v3, :cond_52

    iget-object v1, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->codes:[I

    array-length v1, v1

    if-ge v1, v2, :cond_52

    .line 905
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget v4, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyTextSize:I

    int-to-float v4, v4

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 906
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_61

    .line 908
    :cond_52
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget v4, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewTextSizeLarge:I

    int-to-float v4, v4

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 909
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 912
    :goto_61
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 913
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 912
    invoke-virtual {v1, v4, v6}, Landroid/widget/TextView;->measure(II)V

    .line 914
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget v4, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->width:I

    iget-object v6, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 915
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v4, v6

    iget-object v6, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v6

    add-int/2addr v4, v6

    .line 914
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 916
    iget v4, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewHeight:I

    .line 917
    iget-object v6, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_96

    .line 919
    iput v1, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 920
    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 922
    :cond_96
    iget-boolean v6, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewCentered:Z

    if-nez v6, :cond_b3

    .line 923
    iget v6, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->x:I

    iget-object v7, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupPreviewX:I

    .line 924
    iget v6, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->y:I

    sub-int/2addr v6, v4

    iget v7, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewOffset:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupPreviewY:I

    goto :goto_c7

    .line 927
    :cond_b3
    iget-object v6, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    div-int/2addr v6, v2

    rsub-int v6, v6, 0xa0

    iput v6, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupPreviewX:I

    .line 928
    iget-object v6, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    neg-int v6, v6

    iput v6, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupPreviewY:I

    .line 930
    :goto_c7
    iget-object v6, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 931
    iget-object v6, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 932
    iget-object v6, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCoordinates:[I

    aget v7, v6, v5

    iget v8, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboardOffsetX:I

    add-int/2addr v7, v8

    aput v7, v6, v5

    .line 933
    aget v7, v6, v3

    iget v8, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboardOffsetY:I

    add-int/2addr v7, v8

    aput v7, v6, v3

    .line 936
    iget-object v6, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 937
    iget v7, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->popupResId:I

    if-eqz v7, :cond_ee

    sget-object v7, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    goto :goto_f0

    :cond_ee
    sget-object v7, Landroid/view/View;->EMPTY_STATE_SET:[I

    .line 936
    :goto_f0
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 938
    iget v6, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupPreviewX:I

    iget-object v7, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCoordinates:[I

    aget v8, v7, v5

    add-int/2addr v6, v8

    iput v6, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupPreviewX:I

    .line 939
    iget v6, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupPreviewY:I

    aget v8, v7, v3

    add-int/2addr v6, v8

    iput v6, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupPreviewY:I

    .line 942
    invoke-virtual {p0, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 943
    iget v6, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupPreviewY:I

    iget-object v7, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCoordinates:[I

    aget v3, v7, v3

    add-int/2addr v6, v3

    if-gez v6, :cond_139

    .line 946
    iget v3, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->x:I

    iget v6, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->width:I

    add-int/2addr v3, v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/2addr v6, v2

    const-wide/high16 v7, 0x4004000000000000L  # 2.5

    if-gt v3, v6, :cond_129

    .line 947
    iget v2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupPreviewX:I

    iget p1, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->width:I

    int-to-double v9, p1

    mul-double v9, v9, v7

    double-to-int p1, v9

    add-int/2addr v2, p1

    iput v2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupPreviewX:I

    goto :goto_134

    .line 949
    :cond_129
    iget v2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupPreviewX:I

    iget p1, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->width:I

    int-to-double v9, p1

    mul-double v9, v9, v7

    double-to-int p1, v9

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupPreviewX:I

    .line 951
    :goto_134
    iget p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupPreviewY:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupPreviewY:I

    .line 954
    :cond_139
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_147

    .line 955
    iget p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupPreviewX:I

    iget v2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupPreviewY:I

    invoke-virtual {v0, p1, v2, v1, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_156

    .line 958
    :cond_147
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 959
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 960
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupParent:Landroid/view/View;

    iget v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupPreviewX:I

    iget v2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupPreviewY:I

    invoke-virtual {v0, p1, v5, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 963
    :goto_156
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_15b
    :goto_15b
    return-void
.end method

.method private showPreview(I)V
    .registers 10

    .line 849
    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKeyIndex:I

    .line 850
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 852
    iput p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKeyIndex:I

    .line 854
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeys:[Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v0, p1, :cond_38

    if-eq v0, v5, :cond_23

    .line 856
    array-length v6, v2

    if-le v6, v0, :cond_23

    .line 857
    aget-object v6, v2, v0

    if-ne p1, v5, :cond_18

    const/4 v7, 0x1

    goto :goto_19

    :cond_18
    const/4 v7, 0x0

    .line 858
    :goto_19
    invoke-virtual {v6, v7}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->onReleased(Z)V

    .line 859
    invoke-virtual {p0, v0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->invalidateKey(I)V

    .line 860
    iget-object v6, v6, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->codes:[I

    aget v6, v6, v4

    .line 862
    :cond_23
    iget v6, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKeyIndex:I

    if-eq v6, v5, :cond_38

    array-length v7, v2

    if-le v7, v6, :cond_38

    .line 863
    aget-object v2, v2, v6

    .line 864
    invoke-virtual {v2}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->onPressed()V

    .line 865
    iget v6, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {p0, v6}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->invalidateKey(I)V

    .line 866
    iget-object v2, v2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    .line 870
    :cond_38
    iget v2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCurrentKeyIndex:I

    if-eq v0, v2, :cond_78

    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mShowPreview:Z

    if-eqz v0, :cond_78

    .line 871
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 872
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_59

    if-ne p1, v5, :cond_59

    .line 874
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    .line 875
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v6, 0x46

    .line 874
    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_59
    if-eq p1, v5, :cond_78

    .line 880
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6d

    .line 882
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->showKey(I)V

    goto :goto_78

    .line 884
    :cond_6d
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 885
    invoke-virtual {v0, v3, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x0

    .line 884
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_78
    :goto_78
    return-void
.end method


# virtual methods
.method public closing()V
    .registers 2

    .line 1334
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1335
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1337
    :cond_d
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->removeMessages()V

    .line 1339
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->dismissPopupKeyboard()V

    const/4 v0, 0x0

    .line 1340
    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 1341
    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 1342
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getKeyboard()Lcom/codemao/creativecenter/customview/keyboard/Keyboard;
    .registers 2

    .line 484
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyboard:Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    return-object v0
.end method

.method protected getOnKeyboardActionListener()Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;
    .registers 2

    .line 448
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyboardActionListener:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;

    return-object v0
.end method

.method public invalidateAllKeys()V
    .registers 5

    .line 974
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 976
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public invalidateKey(I)V
    .registers 8

    .line 987
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeys:[Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-ltz p1, :cond_5e

    .line 988
    array-length v1, v0

    if-lt p1, v1, :cond_b

    goto :goto_5e

    .line 991
    :cond_b
    aget-object p1, v0, p1

    .line 992
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mInvalidatedKey:Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    .line 993
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget v1, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->x:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->y:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->x:I

    iget v4, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->width:I

    add-int/2addr v3, v4

    .line 994
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->y:I

    iget v5, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 993
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 995
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->onBufferDraw()V

    .line 996
    iget v0, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->x:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->y:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->x:I

    iget v3, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->width:I

    add-int/2addr v2, v3

    .line 997
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->y:I

    iget p1, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->height:I

    add-int/2addr v3, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    add-int/2addr v3, p1

    .line 996
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    :cond_5e
    :goto_5e
    return-void
.end method

.method public isShifted()Z
    .registers 2

    .line 511
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyboard:Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    if-eqz v0, :cond_9

    .line 512
    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->isShifted()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 353
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 354
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->initGestureDetector()V

    .line 355
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_11

    .line 356
    new-instance v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$1;-><init>(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mHandler:Landroid/os/Handler;

    :cond_11
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 573
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->dismissPopupKeyboard()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .line 1355
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1356
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->closing()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 631
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLongPress(Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;)Z
    .registers 10

    .line 1026
    iget v2, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->popupResId:I

    const/4 v6, 0x0

    if-eqz v2, :cond_117

    .line 1029
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    if-nez v0, :cond_85

    .line 1031
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1033
    iget v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupLayout:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1034
    sget v1, Lcom/codemao/creativecenter/R$id;->creative_keyboardView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboard:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    .line 1039
    new-instance v1, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$3;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$3;-><init>(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->setOnKeyboardActionListener(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;)V

    .line 1063
    iget-object v0, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_53

    .line 1064
    new-instance v7, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    const/4 v4, -0x1

    .line 1065
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v0

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    goto :goto_5c

    .line 1067
    :cond_53
    new-instance v7, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0, v2}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 1069
    :goto_5c
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboard:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-virtual {v0, v7}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->setKeyboard(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)V

    .line 1070
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboard:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-virtual {v0, p0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->setPopupParent(Landroid/view/View;)V

    .line 1071
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1072
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1073
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1071
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1075
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8f

    .line 1077
    :cond_85
    sget v1, Lcom/codemao/creativecenter/R$id;->creative_keyboardView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboard:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    .line 1080
    :goto_8f
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1081
    iget v0, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->x:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupX:I

    .line 1082
    iget v0, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->y:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupY:I

    .line 1083
    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupX:I

    iget p1, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->width:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupX:I

    .line 1084
    iget p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupY:I

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupY:I

    .line 1085
    iget p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupX:I

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCoordinates:[I

    aget v0, v0, v6

    add-int/2addr p1, v0

    .line 1086
    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupY:I

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mCoordinates:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 1087
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboard:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    if-gez p1, :cond_e2

    const/4 v3, 0x0

    goto :goto_e3

    :cond_e2
    move v3, p1

    :goto_e3
    invoke-virtual {v1, v3, v0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->setPopupOffset(II)V

    .line 1088
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboard:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->isShifted()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->setShifted(Z)Z

    .line 1089
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1090
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1091
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1092
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0, v6, p1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1093
    iput-boolean v2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboardOnScreen:Z

    .line 1095
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->invalidateAllKeys()V

    return v2

    :cond_117
    return v6
.end method

.method public onMeasure(II)V
    .registers 5

    .line 587
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyboard:Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    if-nez p2, :cond_1a

    .line 588
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_47

    .line 590
    :cond_1a
    invoke-virtual {p2}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->getMinWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr p2, v0

    .line 591
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    add-int/lit8 v1, p2, 0xa

    if-ge v0, v1, :cond_34

    .line 592
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 594
    :cond_34
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyboard:Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_47
    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    .line 621
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 622
    iget-object p3, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyboard:Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    if-eqz p3, :cond_a

    .line 623
    invoke-virtual {p3, p1, p2}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->resize(II)V

    :cond_a
    const/4 p1, 0x0

    .line 626
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14

    .line 1125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 1126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 1130
    iget v2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mOldPointerCount:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v0, v2, :cond_4d

    if-ne v0, v11, :cond_37

    const/4 v6, 0x0

    .line 1134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    move-wide v2, v4

    .line 1133
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 1135
    invoke-direct {p0, v2, v10}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v3

    .line 1136
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    if-ne v1, v11, :cond_35

    .line 1139
    invoke-direct {p0, p1, v11}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result p1

    move v11, p1

    goto :goto_5f

    :cond_35
    move v11, v3

    goto :goto_5f

    :cond_37
    const/4 v6, 0x1

    .line 1143
    iget v7, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mOldPointerX:F

    iget v8, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mOldPointerY:F

    .line 1144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    move-wide v2, v4

    .line 1143
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1145
    invoke-direct {p0, p1, v11}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v11

    .line 1146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_5f

    :cond_4d
    if-ne v0, v11, :cond_5f

    .line 1150
    invoke-direct {p0, p1, v10}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v11

    .line 1151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mOldPointerX:F

    .line 1152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mOldPointerY:F

    .line 1158
    :cond_5f
    :goto_5f
    iput v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mOldPointerCount:I

    return v11
.end method

.method public setKeyboard(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)V
    .registers 4

    .line 459
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyboard:Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    .line 460
    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->showPreview(I)V

    .line 463
    :cond_8
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->removeMessages()V

    .line 464
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyboard:Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    .line 465
    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 466
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeys:[Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    .line 467
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/4 v0, 0x1

    .line 469
    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyboardChanged:Z

    .line 470
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->invalidateAllKeys()V

    .line 471
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->computeProximityThreshold(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)V

    .line 472
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 475
    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mAbortKey:Z

    return-void
.end method

.method public setOnKeyboardActionListener(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;)V
    .registers 2

    .line 440
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyboardActionListener:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;

    return-void
.end method

.method public setPopupOffset(II)V
    .registers 3

    .line 544
    iput p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboardOffsetX:I

    .line 545
    iput p2, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mMiniKeyboardOffsetY:I

    .line 546
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 547
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_11
    return-void
.end method

.method public setPopupParent(Landroid/view/View;)V
    .registers 2

    .line 540
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mPopupParent:Landroid/view/View;

    return-void
.end method

.method public setPreviewEnabled(Z)V
    .registers 2

    .line 524
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mShowPreview:Z

    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .registers 2

    .line 558
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mProximityCorrectOn:Z

    return-void
.end method

.method public setShifted(Z)Z
    .registers 3

    .line 494
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyboard:Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    if-eqz v0, :cond_f

    .line 495
    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->setShifted(Z)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 497
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->invalidateAllKeys()V

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public setVerticalCorrection(I)V
    .registers 2

    return-void
.end method

.method protected swipeDown()V
    .registers 2

    .line 1330
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyboardActionListener:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;->swipeDown()V

    return-void
.end method

.method protected swipeLeft()V
    .registers 2

    .line 1322
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyboardActionListener:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;->swipeLeft()V

    return-void
.end method

.method protected swipeRight()V
    .registers 2

    .line 1318
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyboardActionListener:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;->swipeRight()V

    return-void
.end method

.method protected swipeUp()V
    .registers 2

    .line 1326
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->mKeyboardActionListener:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;->swipeUp()V

    return-void
.end method
