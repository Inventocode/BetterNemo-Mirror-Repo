.class public Lcn/codemao/android/sketch/SketchActivity;
.super Lcn/codemao/android/sketch/activity/BaseActivity;
.source "SketchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private bgColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

.field private bgColorPosition:I

.field protected boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

.field private centerPointInfo:Lcn/codemao/android/sketch/model/CenterPointInfo;

.field private colorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private curName:Ljava/lang/String;

.field private delayHelper:Lcn/codemao/android/sketch/utils/TimerHelper;

.field private editText:Landroid/widget/EditText;

.field private figrueColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

.field private figureColorPosition:I

.field private fileName:Ljava/lang/String;

.field private isChangeFocus:Z

.field private isEditName:Z

.field private isHideTop:Z

.field private isKeyboardShowing:Z

.field private isShowingKeyBoard:Z

.field private ivDone:Landroid/widget/ImageView;

.field private ivFigureDelete:Landroid/widget/ImageView;

.field private ivLine:Landroid/widget/ImageView;

.field private ivNameEdit:Landroid/widget/ImageView;

.field private lastClickText:J

.field private llBgFunction:Landroid/widget/LinearLayout;

.field private llFigureFunction:Landroid/widget/LinearLayout;

.field private llFlipFunction:Landroid/widget/RelativeLayout;

.field private llPenFunction:Landroid/widget/LinearLayout;

.field private llTextFunction:Landroid/widget/LinearLayout;

.field private mAlertDialog:Lcn/codemao/android/sketch/view/MAlertDialog;

.field private mCacheBitmap:Landroid/graphics/Bitmap;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mRlBottom:Landroid/widget/RelativeLayout;

.field private mode:I

.field private onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private paintSize:I

.field private paintWitdhType:I

.field private penColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

.field private penColorPosition:I

.field public permissions:[Ljava/lang/String;

.field private radioGroup:Landroid/widget/LinearLayout;

.field private rbBgColor:Landroid/widget/CheckBox;

.field private rbCenter:Landroid/widget/CheckBox;

.field private rbCutout:Landroid/widget/TextView;

.field private rbFigure:Landroid/widget/TextView;

.field private rbFlip:Landroid/widget/CheckBox;

.field private rbPen:Landroid/widget/CheckBox;

.field private rbText:Landroid/widget/TextView;

.field private rlClose:Landroid/widget/RelativeLayout;

.field private rlDone:Landroid/widget/RelativeLayout;

.field private rlFigureClose:Landroid/widget/RelativeLayout;

.field private rlFigureConfirm:Landroid/widget/RelativeLayout;

.field private rlFigureSave:Landroid/widget/RelativeLayout;

.field private rlFigureTypeFunction:Landroid/widget/RelativeLayout;

.field private rlLine:Landroid/widget/RelativeLayout;

.field private rlNotch:Landroid/widget/RelativeLayout;

.field private rlOval:Landroid/widget/RelativeLayout;

.field private rlPenSizeFunction:Landroid/widget/RelativeLayout;

.field private rlRRect:Landroid/widget/RelativeLayout;

.field private rlRect:Landroid/widget/RelativeLayout;

.field private rlSizeFour:Landroid/widget/RelativeLayout;

.field private rlSizeOne:Landroid/widget/RelativeLayout;

.field private rlSizeThree:Landroid/widget/RelativeLayout;

.field private rlSizeTwo:Landroid/widget/RelativeLayout;

.field private rlTitle:Landroid/widget/LinearLayout;

.field private rlTra:Landroid/widget/RelativeLayout;

.field protected roleName:Ljava/lang/String;

.field private rvBgColor:Landroidx/recyclerview/widget/RecyclerView;

.field private rvFigureColor:Landroidx/recyclerview/widget/RecyclerView;

.field private rvPenColor:Landroidx/recyclerview/widget/RecyclerView;

.field private rvTextColor:Landroidx/recyclerview/widget/RecyclerView;

.field protected screenHeight:I

.field protected screenWitdh:I

.field private sizeList:[I

.field private textBackColorPosition:I

.field private textColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

.field private textColorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private textColorPosition:I

.field private textColorType:I

.field protected toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

.field private tvEraser:Landroid/widget/ImageView;

.field private tvName:Landroid/widget/EditText;

.field private tvRevoke:Landroid/widget/ImageView;

.field private tvSizeFour:Lcn/codemao/android/sketch/view/RoundView;

.field private tvSizeOne:Lcn/codemao/android/sketch/view/RoundView;

.field private tvSizeThree:Lcn/codemao/android/sketch/view/RoundView;

.field private tvSizeTwo:Lcn/codemao/android/sketch/view/RoundView;

.field private tvTextConfirm:Landroid/widget/TextView;

.field protected type:I

.field private vitrualBarHeight:I


# direct methods
.method public static synthetic $r8$lambda$zNAIXSIxzEv8IH47Oh1BsxbcMbk(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-static {p0, p1}, Lcn/codemao/android/sketch/SketchActivity;->lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 68
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 113
    iput v0, p0, Lcn/codemao/android/sketch/SketchActivity;->penColorPosition:I

    iput v0, p0, Lcn/codemao/android/sketch/SketchActivity;->figureColorPosition:I

    iput v0, p0, Lcn/codemao/android/sketch/SketchActivity;->textColorPosition:I

    const/4 v1, 0x1

    .line 115
    iput v1, p0, Lcn/codemao/android/sketch/SketchActivity;->paintWitdhType:I

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 117
    fill-array-data v1, :array_32

    iput-object v1, p0, Lcn/codemao/android/sketch/SketchActivity;->sizeList:[I

    .line 125
    iput-boolean v0, p0, Lcn/codemao/android/sketch/SketchActivity;->isShowingKeyBoard:Z

    .line 126
    iput-boolean v0, p0, Lcn/codemao/android/sketch/SketchActivity;->isChangeFocus:Z

    .line 131
    iput v0, p0, Lcn/codemao/android/sketch/SketchActivity;->mode:I

    const/16 v1, 0xfa0

    .line 134
    iput v1, p0, Lcn/codemao/android/sketch/SketchActivity;->textColorType:I

    .line 145
    iput v0, p0, Lcn/codemao/android/sketch/SketchActivity;->vitrualBarHeight:I

    .line 146
    iput-boolean v0, p0, Lcn/codemao/android/sketch/SketchActivity;->isKeyboardShowing:Z

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1042
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->permissions:[Ljava/lang/String;

    .line 1193
    sget-object v0, Lcn/codemao/android/sketch/SketchActivity$$ExternalSyntheticLambda0;->INSTANCE:Lcn/codemao/android/sketch/SketchActivity$$ExternalSyntheticLambda0;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void

    :array_32
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method static synthetic access$000(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/ImageView;
    .registers 1

    .line 68
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity;->ivDone:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/TextView;
    .registers 1

    .line 68
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbCutout:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/ImageView;
    .registers 1

    .line 68
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity;->ivNameEdit:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1100(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/LinearLayout;
    .registers 1

    .line 68
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity;->llTextFunction:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1202(Lcn/codemao/android/sketch/SketchActivity;Z)Z
    .registers 2

    .line 68
    iput-boolean p1, p0, Lcn/codemao/android/sketch/SketchActivity;->isEditName:Z

    return p1
.end method

.method static synthetic access$1302(Lcn/codemao/android/sketch/SketchActivity;Z)Z
    .registers 2

    .line 68
    iput-boolean p1, p0, Lcn/codemao/android/sketch/SketchActivity;->isKeyboardShowing:Z

    return p1
.end method

.method static synthetic access$1400(Lcn/codemao/android/sketch/SketchActivity;Z)V
    .registers 2

    .line 68
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/SketchActivity;->resetClick(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcn/codemao/android/sketch/SketchActivity;)I
    .registers 1

    .line 68
    iget p0, p0, Lcn/codemao/android/sketch/SketchActivity;->penColorPosition:I

    return p0
.end method

.method static synthetic access$1502(Lcn/codemao/android/sketch/SketchActivity;I)I
    .registers 2

    .line 68
    iput p1, p0, Lcn/codemao/android/sketch/SketchActivity;->penColorPosition:I

    return p1
.end method

.method static synthetic access$1600(Lcn/codemao/android/sketch/SketchActivity;)Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;
    .registers 1

    .line 68
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity;->penColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    return-object p0
.end method

.method static synthetic access$1700(Lcn/codemao/android/sketch/SketchActivity;)Ljava/util/ArrayList;
    .registers 1

    .line 68
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1800(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/ImageView;
    .registers 1

    .line 68
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvEraser:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1900(Lcn/codemao/android/sketch/SketchActivity;)V
    .registers 1

    .line 68
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;->setSizeChooseColor()V

    return-void
.end method

.method static synthetic access$200(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 68
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlClose:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$2000(Lcn/codemao/android/sketch/SketchActivity;)I
    .registers 1

    .line 68
    iget p0, p0, Lcn/codemao/android/sketch/SketchActivity;->figureColorPosition:I

    return p0
.end method

.method static synthetic access$2002(Lcn/codemao/android/sketch/SketchActivity;I)I
    .registers 2

    .line 68
    iput p1, p0, Lcn/codemao/android/sketch/SketchActivity;->figureColorPosition:I

    return p1
.end method

.method static synthetic access$2100(Lcn/codemao/android/sketch/SketchActivity;)Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;
    .registers 1

    .line 68
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity;->figrueColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    return-object p0
.end method

.method static synthetic access$2200(Lcn/codemao/android/sketch/SketchActivity;)I
    .registers 1

    .line 68
    iget p0, p0, Lcn/codemao/android/sketch/SketchActivity;->bgColorPosition:I

    return p0
.end method

.method static synthetic access$2202(Lcn/codemao/android/sketch/SketchActivity;I)I
    .registers 2

    .line 68
    iput p1, p0, Lcn/codemao/android/sketch/SketchActivity;->bgColorPosition:I

    return p1
.end method

.method static synthetic access$2300(Lcn/codemao/android/sketch/SketchActivity;)Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;
    .registers 1

    .line 68
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity;->bgColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    return-object p0
.end method

.method static synthetic access$2400(Lcn/codemao/android/sketch/SketchActivity;)I
    .registers 1

    .line 68
    iget p0, p0, Lcn/codemao/android/sketch/SketchActivity;->textColorType:I

    return p0
.end method

.method static synthetic access$2402(Lcn/codemao/android/sketch/SketchActivity;I)I
    .registers 2

    .line 68
    iput p1, p0, Lcn/codemao/android/sketch/SketchActivity;->textColorType:I

    return p1
.end method

.method static synthetic access$2500(Lcn/codemao/android/sketch/SketchActivity;)Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;
    .registers 1

    .line 68
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity;->textColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    return-object p0
.end method

.method static synthetic access$2600(Lcn/codemao/android/sketch/SketchActivity;)I
    .registers 1

    .line 68
    iget p0, p0, Lcn/codemao/android/sketch/SketchActivity;->textBackColorPosition:I

    return p0
.end method

.method static synthetic access$2602(Lcn/codemao/android/sketch/SketchActivity;I)I
    .registers 2

    .line 68
    iput p1, p0, Lcn/codemao/android/sketch/SketchActivity;->textBackColorPosition:I

    return p1
.end method

.method static synthetic access$2700(Lcn/codemao/android/sketch/SketchActivity;)I
    .registers 1

    .line 68
    iget p0, p0, Lcn/codemao/android/sketch/SketchActivity;->textColorPosition:I

    return p0
.end method

.method static synthetic access$2702(Lcn/codemao/android/sketch/SketchActivity;I)I
    .registers 2

    .line 68
    iput p1, p0, Lcn/codemao/android/sketch/SketchActivity;->textColorPosition:I

    return p1
.end method

.method static synthetic access$2800(Lcn/codemao/android/sketch/SketchActivity;)Ljava/util/ArrayList;
    .registers 1

    .line 68
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity;->textColorList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2900(Lcn/codemao/android/sketch/SketchActivity;)Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lcn/codemao/android/sketch/SketchActivity;->isChangeFocus:Z

    return p0
.end method

.method static synthetic access$2902(Lcn/codemao/android/sketch/SketchActivity;Z)Z
    .registers 2

    .line 68
    iput-boolean p1, p0, Lcn/codemao/android/sketch/SketchActivity;->isChangeFocus:Z

    return p1
.end method

.method static synthetic access$300(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 68
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlDone:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$3000(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/EditText;
    .registers 1

    .line 68
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity;->editText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$3100(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/ImageView;
    .registers 1

    .line 68
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity;->ivLine:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3200(Lcn/codemao/android/sketch/SketchActivity;)J
    .registers 3

    .line 68
    iget-wide v0, p0, Lcn/codemao/android/sketch/SketchActivity;->lastClickText:J

    return-wide v0
.end method

.method static synthetic access$3202(Lcn/codemao/android/sketch/SketchActivity;J)J
    .registers 3

    .line 68
    iput-wide p1, p0, Lcn/codemao/android/sketch/SketchActivity;->lastClickText:J

    return-wide p1
.end method

.method static synthetic access$3300(Lcn/codemao/android/sketch/SketchActivity;Z)V
    .registers 2

    .line 68
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/SketchActivity;->isShowView(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcn/codemao/android/sketch/SketchActivity;)V
    .registers 1

    .line 68
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;->updateView()V

    return-void
.end method

.method static synthetic access$3600(Lcn/codemao/android/sketch/SketchActivity;)Lcn/codemao/android/sketch/model/CenterPointInfo;
    .registers 1

    .line 68
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity;->centerPointInfo:Lcn/codemao/android/sketch/model/CenterPointInfo;

    return-object p0
.end method

.method static synthetic access$3602(Lcn/codemao/android/sketch/SketchActivity;Lcn/codemao/android/sketch/model/CenterPointInfo;)Lcn/codemao/android/sketch/model/CenterPointInfo;
    .registers 2

    .line 68
    iput-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->centerPointInfo:Lcn/codemao/android/sketch/model/CenterPointInfo;

    return-object p1
.end method

.method static synthetic access$3700(Lcn/codemao/android/sketch/SketchActivity;)Landroid/graphics/Bitmap;
    .registers 1

    .line 68
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity;->mCacheBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$3702(Lcn/codemao/android/sketch/SketchActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 68
    iput-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->mCacheBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$3800(Lcn/codemao/android/sketch/SketchActivity;)V
    .registers 1

    .line 68
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;->saveAsFile()V

    return-void
.end method

.method static synthetic access$400(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/CheckBox;
    .registers 1

    .line 68
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbCenter:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$500(Lcn/codemao/android/sketch/SketchActivity;)Lcn/codemao/android/sketch/utils/TimerHelper;
    .registers 1

    .line 68
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity;->delayHelper:Lcn/codemao/android/sketch/utils/TimerHelper;

    return-object p0
.end method

.method static synthetic access$600(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/EditText;
    .registers 1

    .line 68
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvName:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$700(Lcn/codemao/android/sketch/SketchActivity;)I
    .registers 1

    .line 68
    iget p0, p0, Lcn/codemao/android/sketch/SketchActivity;->vitrualBarHeight:I

    return p0
.end method

.method static synthetic access$800(Lcn/codemao/android/sketch/SketchActivity;)Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lcn/codemao/android/sketch/SketchActivity;->isShowingKeyBoard:Z

    return p0
.end method

.method static synthetic access$802(Lcn/codemao/android/sketch/SketchActivity;Z)Z
    .registers 2

    .line 68
    iput-boolean p1, p0, Lcn/codemao/android/sketch/SketchActivity;->isShowingKeyBoard:Z

    return p1
.end method

.method static synthetic access$900(Lcn/codemao/android/sketch/SketchActivity;)Ljava/lang/String;
    .registers 1

    .line 68
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity;->curName:Ljava/lang/String;

    return-object p0
.end method

.method private initBottomDrawableSize()V
    .registers 7

    .line 298
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbPen:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 299
    iget v2, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    div-int/lit8 v3, v2, 0x14

    div-int/lit8 v2, v2, 0x14

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 300
    iget-object v2, p0, Lcn/codemao/android/sketch/SketchActivity;->rbPen:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v3, v3}, Landroid/widget/CheckBox;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 301
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbBgColor:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    .line 302
    iget v2, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    div-int/lit8 v5, v2, 0x14

    div-int/lit8 v2, v2, 0x14

    invoke-virtual {v0, v4, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 303
    iget-object v2, p0, Lcn/codemao/android/sketch/SketchActivity;->rbBgColor:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3, v0, v3, v3}, Landroid/widget/CheckBox;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 304
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbCutout:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    .line 305
    iget v2, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    div-int/lit8 v5, v2, 0x14

    div-int/lit8 v2, v2, 0x14

    invoke-virtual {v0, v4, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 306
    iget-object v2, p0, Lcn/codemao/android/sketch/SketchActivity;->rbCutout:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v0, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 307
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbCenter:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    .line 308
    iget v2, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    div-int/lit8 v5, v2, 0x14

    div-int/lit8 v2, v2, 0x14

    invoke-virtual {v0, v4, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 309
    iget-object v2, p0, Lcn/codemao/android/sketch/SketchActivity;->rbCenter:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3, v0, v3, v3}, Landroid/widget/CheckBox;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 310
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbFlip:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    .line 311
    iget v2, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    div-int/lit8 v5, v2, 0x14

    div-int/lit8 v2, v2, 0x14

    invoke-virtual {v0, v4, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 312
    iget-object v2, p0, Lcn/codemao/android/sketch/SketchActivity;->rbFlip:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3, v0, v3, v3}, Landroid/widget/CheckBox;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 313
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    .line 314
    iget v2, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    div-int/lit8 v5, v2, 0x14

    div-int/lit8 v2, v2, 0x14

    invoke-virtual {v0, v4, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 315
    iget-object v2, p0, Lcn/codemao/android/sketch/SketchActivity;->rbText:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v0, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 316
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbFigure:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    .line 317
    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    div-int/lit8 v2, v1, 0x14

    div-int/lit8 v1, v1, 0x14

    invoke-virtual {v0, v4, v4, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 318
    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity;->rbFigure:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initData()V
    .registers 4

    .line 169
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "roleName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->roleName:Ljava/lang/String;

    .line 170
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "savePath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->fileName:Ljava/lang/String;

    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "activity"

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/SketchActivity;->type:I

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    const v1, -0x77b015

    .line 173
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    const v1, -0x2fa301

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    const v1, -0xa65c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    const v1, -0xd581

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    const v1, -0xfac4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    const v1, -0x19ac4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    const/16 v1, -0x2a00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    const/16 v1, -0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    const v1, -0x570100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    const v1, -0xd32fd6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    const v1, -0xb12748

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    const v1, -0x7a2901

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    const v1, -0xb14901

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    const v1, -0xe77b13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    const v1, -0xc0b310

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    const v1, -0x424243

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    const/high16 v1, -0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->textColorList:Ljava/util/ArrayList;

    const/16 v1, -0x3e7

    .line 192
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->textColorList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 195
    new-instance v0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->penColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    .line 196
    new-instance v0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->figrueColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    .line 197
    new-instance v0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity;->textColorList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->textColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    .line 198
    new-instance v0, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->bgColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    .line 200
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/codemao/android/sketch/SketchActivity;->penColorPosition:I

    .line 201
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->penColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->setSelectPosition(I)V

    const/4 v0, 0x0

    .line 202
    iput v0, p0, Lcn/codemao/android/sketch/SketchActivity;->figureColorPosition:I

    .line 203
    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity;->figrueColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    invoke-virtual {v1, v0}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->setSelectPosition(I)V

    .line 204
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->textColorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/codemao/android/sketch/SketchActivity;->textColorPosition:I

    add-int/lit8 v0, v0, -0x2

    .line 205
    iput v0, p0, Lcn/codemao/android/sketch/SketchActivity;->textBackColorPosition:I

    .line 206
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->textColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity;->textColorList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->setSelectPosition(I)V

    .line 207
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcn/codemao/android/sketch/SketchActivity;->bgColorPosition:I

    .line 208
    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity;->bgColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    invoke-virtual {v1, v0}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->setSelectPosition(I)V

    .line 209
    new-instance v0, Lcn/codemao/android/sketch/utils/ToastUtils;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/utils/ToastUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    return-void
.end method

.method private initView()V
    .registers 4

    .line 322
    sget v0, Lcn/codemao/android/sketch/R$layout;->activity_sketch:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 323
    sget v0, Lcn/codemao/android/sketch/R$id;->rb_pen:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbPen:Landroid/widget/CheckBox;

    .line 324
    sget v0, Lcn/codemao/android/sketch/R$id;->rb_center:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbCenter:Landroid/widget/CheckBox;

    .line 325
    sget v0, Lcn/codemao/android/sketch/R$id;->rb_text:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbText:Landroid/widget/TextView;

    .line 326
    sget v0, Lcn/codemao/android/sketch/R$id;->rb_figure:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbFigure:Landroid/widget/TextView;

    .line 327
    sget v0, Lcn/codemao/android/sketch/R$id;->rb_flip:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbFlip:Landroid/widget/CheckBox;

    .line 328
    sget v0, Lcn/codemao/android/sketch/R$id;->rb_back_paint:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbBgColor:Landroid/widget/CheckBox;

    .line 329
    sget v0, Lcn/codemao/android/sketch/R$id;->rb_cut_out:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbCutout:Landroid/widget/TextView;

    .line 330
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_pen:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 331
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_center:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 332
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_text:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 333
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_figure:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 334
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_flip:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 335
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_back_paint:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 336
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_cut_out:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 337
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_sketch:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 338
    sget v0, Lcn/codemao/android/sketch/R$id;->boardview:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/SketchViewV4;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    .line 339
    sget v0, Lcn/codemao/android/sketch/R$id;->bottom_rg:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->radioGroup:Landroid/widget/LinearLayout;

    .line 340
    sget v0, Lcn/codemao/android/sketch/R$id;->tv_name:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvName:Landroid/widget/EditText;

    .line 341
    sget v0, Lcn/codemao/android/sketch/R$id;->iv_name_edit:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->ivNameEdit:Landroid/widget/ImageView;

    .line 342
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_done:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlDone:Landroid/widget/RelativeLayout;

    .line 343
    sget v0, Lcn/codemao/android/sketch/R$id;->tv_done:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->ivDone:Landroid/widget/ImageView;

    .line 344
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_close:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlClose:Landroid/widget/RelativeLayout;

    .line 345
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_title:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlTitle:Landroid/widget/LinearLayout;

    .line 346
    sget v0, Lcn/codemao/android/sketch/R$id;->iv_line:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->ivLine:Landroid/widget/ImageView;

    .line 347
    sget v0, Lcn/codemao/android/sketch/R$id;->rv_pen_color_select:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rvPenColor:Landroidx/recyclerview/widget/RecyclerView;

    .line 348
    sget v0, Lcn/codemao/android/sketch/R$id;->rv_figure_color_select:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rvFigureColor:Landroidx/recyclerview/widget/RecyclerView;

    .line 349
    sget v0, Lcn/codemao/android/sketch/R$id;->rv_text_color_select:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rvTextColor:Landroidx/recyclerview/widget/RecyclerView;

    .line 350
    sget v0, Lcn/codemao/android/sketch/R$id;->rv_bg_color_select:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rvBgColor:Landroidx/recyclerview/widget/RecyclerView;

    .line 351
    sget v0, Lcn/codemao/android/sketch/R$id;->ll_pen_funcion:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->llPenFunction:Landroid/widget/LinearLayout;

    .line 352
    sget v0, Lcn/codemao/android/sketch/R$id;->include_flip:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->llFlipFunction:Landroid/widget/RelativeLayout;

    .line 353
    sget v0, Lcn/codemao/android/sketch/R$id;->ll_draw_function:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlPenSizeFunction:Landroid/widget/RelativeLayout;

    .line 354
    sget v0, Lcn/codemao/android/sketch/R$id;->ll_figure_funcion:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->llFigureFunction:Landroid/widget/LinearLayout;

    .line 355
    sget v0, Lcn/codemao/android/sketch/R$id;->ll_bg_funcion:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->llBgFunction:Landroid/widget/LinearLayout;

    .line 356
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_figure_type_function:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlFigureTypeFunction:Landroid/widget/RelativeLayout;

    .line 357
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_notch:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlNotch:Landroid/widget/RelativeLayout;

    .line 358
    sget v0, Lcn/codemao/android/sketch/R$id;->ll_text_funcion:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->llTextFunction:Landroid/widget/LinearLayout;

    .line 359
    sget v0, Lcn/codemao/android/sketch/R$id;->tv_size_one:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/RoundView;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvSizeOne:Lcn/codemao/android/sketch/view/RoundView;

    .line 360
    sget v0, Lcn/codemao/android/sketch/R$id;->tv_size_two:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/RoundView;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvSizeTwo:Lcn/codemao/android/sketch/view/RoundView;

    .line 361
    sget v0, Lcn/codemao/android/sketch/R$id;->tv_size_four:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/RoundView;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvSizeFour:Lcn/codemao/android/sketch/view/RoundView;

    .line 362
    sget v0, Lcn/codemao/android/sketch/R$id;->tv_input_finish:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvTextConfirm:Landroid/widget/TextView;

    .line 363
    sget v0, Lcn/codemao/android/sketch/R$id;->tv_size_three:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/RoundView;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvSizeThree:Lcn/codemao/android/sketch/view/RoundView;

    .line 364
    sget v0, Lcn/codemao/android/sketch/R$id;->iv_figure_delete:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->ivFigureDelete:Landroid/widget/ImageView;

    .line 365
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_size_one:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlSizeOne:Landroid/widget/RelativeLayout;

    .line 366
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_size_two:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlSizeTwo:Landroid/widget/RelativeLayout;

    .line 367
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_size_four:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlSizeFour:Landroid/widget/RelativeLayout;

    .line 368
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_size_three:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlSizeThree:Landroid/widget/RelativeLayout;

    .line 369
    sget v0, Lcn/codemao/android/sketch/R$id;->tv_revoke:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvRevoke:Landroid/widget/ImageView;

    .line 370
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_figure_confirm:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlFigureConfirm:Landroid/widget/RelativeLayout;

    .line 371
    sget v0, Lcn/codemao/android/sketch/R$id;->iv_eraser:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvEraser:Landroid/widget/ImageView;

    .line 372
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_figure_close:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlFigureClose:Landroid/widget/RelativeLayout;

    .line 373
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_figure_save:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlFigureSave:Landroid/widget/RelativeLayout;

    .line 374
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_rect:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlRect:Landroid/widget/RelativeLayout;

    .line 375
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_r_rect:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlRRect:Landroid/widget/RelativeLayout;

    .line 376
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_traingle:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlTra:Landroid/widget/RelativeLayout;

    .line 377
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_line:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlLine:Landroid/widget/RelativeLayout;

    .line 378
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_oval:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlOval:Landroid/widget/RelativeLayout;

    .line 379
    sget v0, Lcn/codemao/android/sketch/R$id;->et_input:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->editText:Landroid/widget/EditText;

    .line 380
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_bottom:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->mRlBottom:Landroid/widget/RelativeLayout;

    .line 381
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvTextConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlFigureSave:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlOval:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlTra:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlRect:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlRRect:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlLine:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlSizeOne:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlSizeTwo:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlSizeThree:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlSizeFour:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvRevoke:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvEraser:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlFigureClose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlFigureConfirm:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->ivNameEdit:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->ivFigureDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvName:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlClose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbFigure:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbCutout:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbPen:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbCenter:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlDone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbFlip:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbBgColor:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlRect:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 410
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlTra:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 411
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlOval:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 412
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlRRect:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 413
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlLine:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 415
    invoke-static {p0}, Lcn/codemao/android/sketch/utils/ToolUtils;->hasNotch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2ef

    .line 416
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlNotch:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 419
    :cond_2ef
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvName:Landroid/widget/EditText;

    new-instance v1, Lcn/codemao/android/sketch/utils/TextWatcherUtils;

    invoke-direct {v1, v0}, Lcn/codemao/android/sketch/utils/TextWatcherUtils;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 420
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvName:Landroid/widget/EditText;

    new-instance v1, Lcn/codemao/android/sketch/SketchActivity$2;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/SketchActivity$2;-><init>(Lcn/codemao/android/sketch/SketchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 429
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvName:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 431
    new-instance v0, Lcn/codemao/android/sketch/SketchActivity$3;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/SketchActivity$3;-><init>(Lcn/codemao/android/sketch/SketchActivity;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 459
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcn/codemao/android/sketch/SketchActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 461
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->penColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    new-instance v2, Lcn/codemao/android/sketch/SketchActivity$4;

    invoke-direct {v2, p0}, Lcn/codemao/android/sketch/SketchActivity$4;-><init>(Lcn/codemao/android/sketch/SketchActivity;)V

    invoke-virtual {v0, v2}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->setColorSelecListener(Landroid/view/View$OnClickListener;)V

    .line 472
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->figrueColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    new-instance v2, Lcn/codemao/android/sketch/SketchActivity$5;

    invoke-direct {v2, p0}, Lcn/codemao/android/sketch/SketchActivity$5;-><init>(Lcn/codemao/android/sketch/SketchActivity;)V

    invoke-virtual {v0, v2}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->setColorSelecListener(Landroid/view/View$OnClickListener;)V

    .line 482
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->bgColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    new-instance v2, Lcn/codemao/android/sketch/SketchActivity$6;

    invoke-direct {v2, p0}, Lcn/codemao/android/sketch/SketchActivity$6;-><init>(Lcn/codemao/android/sketch/SketchActivity;)V

    invoke-virtual {v0, v2}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->setColorSelecListener(Landroid/view/View$OnClickListener;)V

    .line 490
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->textColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    new-instance v2, Lcn/codemao/android/sketch/SketchActivity$7;

    invoke-direct {v2, p0}, Lcn/codemao/android/sketch/SketchActivity$7;-><init>(Lcn/codemao/android/sketch/SketchActivity;)V

    invoke-virtual {v0, v2}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->setColorSelecListener(Landroid/view/View$OnClickListener;)V

    .line 519
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->editText:Landroid/widget/EditText;

    new-instance v2, Lcn/codemao/android/sketch/SketchActivity$8;

    invoke-direct {v2, p0}, Lcn/codemao/android/sketch/SketchActivity$8;-><init>(Lcn/codemao/android/sketch/SketchActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 546
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    new-instance v2, Lcn/codemao/android/sketch/SketchActivity$9;

    invoke-direct {v2, p0}, Lcn/codemao/android/sketch/SketchActivity$9;-><init>(Lcn/codemao/android/sketch/SketchActivity;)V

    invoke-virtual {v0, v2}, Lcn/codemao/android/sketch/view/SketchViewV4;->setOnTouchClickListener(Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;)V

    .line 601
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private initViewSize()V
    .registers 16

    .line 213
    invoke-virtual {p0}, Lcn/codemao/android/sketch/SketchActivity;->getVirtualBarHeight()I

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/SketchActivity;->vitrualBarHeight:I

    .line 214
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    .line 215
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcn/codemao/android/sketch/SketchActivity;->screenWitdh:I

    .line 216
    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    if-le v0, v1, :cond_26

    .line 218
    iput v0, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    .line 219
    iput v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenWitdh:I

    .line 221
    :cond_26
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->sizeList:[I

    const/4 v1, 0x0

    iget v2, p0, Lcn/codemao/android/sketch/SketchActivity;->screenWitdh:I

    mul-int/lit8 v3, v2, 0x3

    div-int/lit16 v3, v3, 0x177

    aput v3, v0, v1

    const/4 v1, 0x1

    mul-int/lit8 v3, v2, 0x5

    .line 222
    div-int/lit16 v3, v3, 0x177

    aput v3, v0, v1

    const/4 v1, 0x2

    mul-int/lit8 v3, v2, 0xa

    .line 223
    div-int/lit16 v3, v3, 0x177

    aput v3, v0, v1

    mul-int/lit8 v2, v2, 0x10

    .line 224
    div-int/lit16 v2, v2, 0x177

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 226
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->penColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->setScreenHeight(I)V

    .line 227
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->figrueColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->setScreenHeight(I)V

    .line 228
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->textColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->setScreenHeight(I)V

    .line 229
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->bgColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->setScreenHeight(I)V

    .line 230
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->radioGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    int-to-double v1, v1

    const-wide v3, 0x3fb4bc6a7ef9db23L  # 0.081

    mul-double v1, v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 231
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->llFlipFunction:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    int-to-double v1, v1

    const-wide v5, 0x3fb0e5604189374cL  # 0.066

    mul-double v1, v1, v5

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 232
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlDone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    int-to-double v1, v1

    mul-double v1, v1, v5

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 233
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlDone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    int-to-double v1, v1

    mul-double v1, v1, v5

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 234
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlClose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    int-to-double v1, v1

    mul-double v1, v1, v5

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 235
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlClose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    int-to-double v1, v1

    mul-double v1, v1, v5

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 237
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlPenSizeFunction:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    int-to-double v1, v1

    mul-double v1, v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 238
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvSizeOne:Lcn/codemao/android/sketch/view/RoundView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    int-to-double v1, v1

    const-wide v7, 0x3f889374bc6a7efaL  # 0.012

    mul-double v1, v1, v7

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 239
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvSizeTwo:Lcn/codemao/android/sketch/view/RoundView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    int-to-double v1, v1

    const-wide v9, 0x3f926e978d4fdf3bL  # 0.018

    mul-double v1, v1, v9

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 240
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvSizeThree:Lcn/codemao/android/sketch/view/RoundView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    int-to-double v1, v1

    const-wide v11, 0x3f989374bc6a7efaL  # 0.024

    mul-double v1, v1, v11

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 241
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvSizeFour:Lcn/codemao/android/sketch/view/RoundView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    int-to-double v1, v1

    const-wide v13, 0x3f9eb851eb851eb8L  # 0.03

    mul-double v1, v1, v13

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 242
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvSizeOne:Lcn/codemao/android/sketch/view/RoundView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    int-to-double v1, v1

    mul-double v1, v1, v7

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 244
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvSizeTwo:Lcn/codemao/android/sketch/view/RoundView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    int-to-double v1, v1

    mul-double v1, v1, v9

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 245
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvSizeThree:Lcn/codemao/android/sketch/view/RoundView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    int-to-double v1, v1

    mul-double v1, v1, v11

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 246
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvSizeFour:Lcn/codemao/android/sketch/view/RoundView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    int-to-double v1, v1

    mul-double v1, v1, v13

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 247
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->ivNameEdit:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    int-to-double v1, v1

    const-wide v7, 0x3fa999999999999aL  # 0.05

    mul-double v1, v1, v7

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 248
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->ivNameEdit:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    int-to-double v9, v1

    mul-double v9, v9, v7

    double-to-int v2, v9

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 259
    iget v0, p0, Lcn/codemao/android/sketch/SketchActivity;->screenWitdh:I

    mul-int/lit16 v2, v0, 0x384

    div-int/lit16 v2, v2, 0x232

    if-le v2, v1, :cond_182

    int-to-float v0, v1

    mul-int/lit16 v1, v1, 0x232

    .line 261
    div-int/lit16 v1, v1, 0x384

    int-to-float v1, v1

    goto :goto_188

    :cond_182
    int-to-float v1, v0

    mul-int/lit16 v0, v0, 0x384

    .line 264
    div-int/lit16 v0, v0, 0x232

    int-to-float v0, v0

    .line 267
    :goto_188
    iget-object v2, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {v2, v1, v0}, Lcn/codemao/android/sketch/view/SketchViewV4;->initCavasSize(FF)V

    .line 268
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlFigureTypeFunction:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    int-to-double v1, v1

    mul-double v1, v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 269
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlFigureConfirm:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    int-to-double v1, v1

    mul-double v1, v1, v5

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 270
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlFigureSave:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    int-to-double v1, v1

    mul-double v1, v1, v5

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 271
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlFigureSave:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    int-to-double v1, v1

    mul-double v1, v1, v5

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 272
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlFigureClose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    int-to-double v1, v1

    mul-double v1, v1, v5

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 273
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlFigureClose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->screenHeight:I

    int-to-double v1, v1

    mul-double v1, v1, v5

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 274
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;->setSizeChooseColor()V

    .line 276
    new-instance v0, Lcn/codemao/android/sketch/utils/TimerHelper;

    const-wide/16 v1, 0x1

    new-instance v3, Lcn/codemao/android/sketch/SketchActivity$1;

    invoke-direct {v3, p0}, Lcn/codemao/android/sketch/SketchActivity$1;-><init>(Lcn/codemao/android/sketch/SketchActivity;)V

    invoke-direct {v0, v1, v2, v3}, Lcn/codemao/android/sketch/utils/TimerHelper;-><init>(JLcn/codemao/android/sketch/utils/TimerHelper$TimeProcessor;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->delayHelper:Lcn/codemao/android/sketch/utils/TimerHelper;

    .line 293
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;->initBottomDrawableSize()V

    return-void
.end method

.method private isShowTop(Z)V
    .registers 3

    if-eqz p1, :cond_b

    .line 1130
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->rlTitle:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1131
    iput-boolean v0, p0, Lcn/codemao/android/sketch/SketchActivity;->isHideTop:Z

    goto :goto_15

    .line 1133
    :cond_b
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->rlTitle:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p1, 0x1

    .line 1134
    iput-boolean p1, p0, Lcn/codemao/android/sketch/SketchActivity;->isHideTop:Z

    :goto_15
    return-void
.end method

.method private isShowView(Z)V
    .registers 7

    const-wide/16 v0, 0xc8

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz p1, :cond_3b

    .line 1141
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->mRlBottom:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_10

    return-void

    .line 1144
    :cond_10
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1145
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1146
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1147
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->mRlBottom:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1148
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->mRlBottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1149
    iget-boolean v0, p0, Lcn/codemao/android/sketch/SketchActivity;->isHideTop:Z

    if-eqz v0, :cond_30

    return-void

    .line 1150
    :cond_30
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1151
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_6f

    .line 1153
    :cond_3b
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->mRlBottom:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    const/16 v4, 0x8

    if-ne p1, v4, :cond_46

    return-void

    .line 1156
    :cond_46
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1157
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1158
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1159
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->mRlBottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1160
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->mRlBottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1161
    iget-boolean v0, p0, Lcn/codemao/android/sketch/SketchActivity;->isHideTop:Z

    if-eqz v0, :cond_65

    return-void

    .line 1162
    :cond_65
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1163
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_6f
    return-void
.end method

.method private static synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_a

    goto :goto_29

    .line 1199
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x78

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_29

    :cond_1a
    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 1196
    fill-array-data p1, :array_2c

    const-string v0, "alpha"

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_29
    const/4 p0, 0x0

    return p0

    nop

    :array_2c
    .array-data 4
        0x3f800000  # 1.0f
        0x3ecccccd  # 0.4f
    .end array-data
.end method

.method private resetClick(Z)V
    .registers 4

    if-eqz p1, :cond_a

    .line 1209
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->delayHelper:Lcn/codemao/android/sketch/utils/TimerHelper;

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, v0, v1}, Lcn/codemao/android/sketch/utils/TimerHelper;->startDelayTime(J)V

    goto :goto_2b

    .line 1211
    :cond_a
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/view/SketchViewV4;->setCanTouch(Z)V

    .line 1212
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->ivDone:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1213
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->rbCenter:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 1214
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->rlClose:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1215
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->rbCutout:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1216
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->rlDone:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    :goto_2b
    return-void
.end method

.method private saveAsFile()V
    .registers 5

    .line 990
    :try_start_0
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->fileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 991
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_enter_correct_image:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/utils/ToastUtils;->showCenterShortToast(Ljava/lang/CharSequence;)V

    return-void

    .line 994
    :cond_14
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 996
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 997
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 998
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 1000
    :cond_2d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1001
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1004
    :cond_36
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1006
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->fileName:Ljava/lang/String;

    const-string v2, ".webp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x4b

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->fileName:Ljava/lang/String;

    const-string v3, ".png"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    goto :goto_5a

    .line 1009
    :cond_52
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->mCacheBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v3, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_61

    .line 1007
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->mCacheBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v3, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1011
    :goto_61
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 1012
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1013
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1014
    new-instance v1, Lcn/codemao/android/sketch/model/ResultInfo;

    invoke-direct {v1}, Lcn/codemao/android/sketch/model/ResultInfo;-><init>()V

    .line 1015
    sget v2, Lcn/codemao/android/sketch/model/ResultInfo;->RESULT_CODE_SUCCESS:I

    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/model/ResultInfo;->setResultCode(I)V

    .line 1016
    iget-object v2, p0, Lcn/codemao/android/sketch/SketchActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/model/ResultInfo;->setFilePath(Ljava/lang/String;)V

    .line 1017
    iget-object v2, p0, Lcn/codemao/android/sketch/SketchActivity;->roleName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 1018
    sget v2, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_new_sprite:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/codemao/android/sketch/SketchActivity;->roleName:Ljava/lang/String;

    .line 1020
    :cond_8b
    iget v2, p0, Lcn/codemao/android/sketch/SketchActivity;->type:I

    const/16 v3, 0x15

    if-eq v2, v3, :cond_9c

    const/16 v3, 0x19

    if-ne v2, v3, :cond_96

    goto :goto_9c

    .line 1023
    :cond_96
    iget-object v2, p0, Lcn/codemao/android/sketch/SketchActivity;->roleName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/model/ResultInfo;->setRoleName(Ljava/lang/String;)V

    goto :goto_bc

    .line 1021
    :cond_9c
    :goto_9c
    iget-object v2, p0, Lcn/codemao/android/sketch/SketchActivity;->tvName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_af

    iget-object v2, p0, Lcn/codemao/android/sketch/SketchActivity;->roleName:Ljava/lang/String;

    goto :goto_b9

    :cond_af
    iget-object v2, p0, Lcn/codemao/android/sketch/SketchActivity;->tvName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_b9
    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/model/ResultInfo;->setRoleName(Ljava/lang/String;)V

    .line 1026
    :goto_bc
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "savePath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/model/ResultInfo;->setFilePath(Ljava/lang/String;)V

    .line 1027
    iget-object v2, p0, Lcn/codemao/android/sketch/SketchActivity;->centerPointInfo:Lcn/codemao/android/sketch/model/CenterPointInfo;

    iget v2, v2, Lcn/codemao/android/sketch/model/CenterPointInfo;->finalX:F

    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/model/ResultInfo;->setCenterPointX(F)V

    .line 1028
    iget-object v2, p0, Lcn/codemao/android/sketch/SketchActivity;->centerPointInfo:Lcn/codemao/android/sketch/model/CenterPointInfo;

    iget v2, v2, Lcn/codemao/android/sketch/model/CenterPointInfo;->finalY:F

    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/model/ResultInfo;->setCenterPointY(F)V

    const-string v2, "resultInfo"

    .line 1029
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 1030
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1031
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_ed

    .line 1032
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1034
    :cond_ed
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f0} :catch_f1

    goto :goto_108

    :catch_f1
    move-exception v0

    const/4 v1, 0x1

    .line 1036
    invoke-direct {p0, v1}, Lcn/codemao/android/sketch/SketchActivity;->resetClick(Z)V

    .line 1037
    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_failed_to_save_image:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/utils/ToastUtils;->showCenterShortToast(Ljava/lang/CharSequence;)V

    .line 1038
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_108
    return-void
.end method

.method private saveBitmap()V
    .registers 4

    .line 946
    new-instance v0, Lcn/codemao/android/sketch/SketchActivity$11;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/SketchActivity$11;-><init>(Lcn/codemao/android/sketch/SketchActivity;)V

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity;->permissions:[Ljava/lang/String;

    const/16 v2, 0x64

    invoke-virtual {p0, v2, v0, v1}, Lcn/codemao/android/sketch/activity/BaseActivity;->requestPermission(ILcn/codemao/android/sketch/listener/PermissionListener;[Ljava/lang/String;)V

    return-void
.end method

.method private setSizeChooseColor()V
    .registers 4

    .line 864
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvSizeOne:Lcn/codemao/android/sketch/view/RoundView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/codemao/android/sketch/R$color;->sketch_pen_size_normal_grey:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/RoundView;->setBackgroundColor(I)V

    .line 865
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvSizeTwo:Lcn/codemao/android/sketch/view/RoundView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/RoundView;->setBackgroundColor(I)V

    .line 866
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvSizeThree:Lcn/codemao/android/sketch/view/RoundView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/RoundView;->setBackgroundColor(I)V

    .line 867
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvSizeFour:Lcn/codemao/android/sketch/view/RoundView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/RoundView;->setBackgroundColor(I)V

    .line 869
    iget v0, p0, Lcn/codemao/android/sketch/SketchActivity;->paintWitdhType:I

    if-eqz v0, :cond_80

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_58

    const/4 v1, 0x3

    if-eq v0, v1, :cond_44

    goto :goto_93

    .line 880
    :cond_44
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvSizeFour:Lcn/codemao/android/sketch/view/RoundView;

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    iget v2, p0, Lcn/codemao/android/sketch/SketchActivity;->penColorPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/RoundView;->setBackgroundColor(I)V

    goto :goto_93

    .line 877
    :cond_58
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvSizeThree:Lcn/codemao/android/sketch/view/RoundView;

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    iget v2, p0, Lcn/codemao/android/sketch/SketchActivity;->penColorPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/RoundView;->setBackgroundColor(I)V

    goto :goto_93

    .line 874
    :cond_6c
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvSizeTwo:Lcn/codemao/android/sketch/view/RoundView;

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    iget v2, p0, Lcn/codemao/android/sketch/SketchActivity;->penColorPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/RoundView;->setBackgroundColor(I)V

    goto :goto_93

    .line 871
    :cond_80
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->tvSizeOne:Lcn/codemao/android/sketch/view/RoundView;

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity;->colorList:Ljava/util/ArrayList;

    iget v2, p0, Lcn/codemao/android/sketch/SketchActivity;->penColorPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/RoundView;->setBackgroundColor(I)V

    .line 883
    :goto_93
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->sizeList:[I

    iget v1, p0, Lcn/codemao/android/sketch/SketchActivity;->paintWitdhType:I

    aget v0, v0, v1

    iput v0, p0, Lcn/codemao/android/sketch/SketchActivity;->paintSize:I

    .line 884
    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {v1, v0}, Lcn/codemao/android/sketch/view/SketchViewV4;->setPaintWitdh(I)V

    return-void
.end method

.method private startCutActivity(Lcn/codemao/android/sketch/model/CutoutBitmapInfo;)V
    .registers 4

    .line 1067
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/codemao/android/sketch/activity/ICutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "cut"

    .line 1068
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1069
    iget p1, p0, Lcn/codemao/android/sketch/SketchActivity;->type:I

    const-string v1, "activity"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x4d3

    .line 1070
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1071
    sget p1, Lcn/codemao/android/sketch/R$anim;->cut_in:I

    sget v0, Lcn/codemao/android/sketch/R$anim;->cut_out:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private stopClick()V
    .registers 3

    .line 1221
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlClose:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1222
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/SketchViewV4;->setCanTouch(Z)V

    .line 1223
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbCenter:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 1224
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbCutout:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1225
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlDone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    return-void
.end method

.method private updateView()V
    .registers 6

    .line 890
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->radioGroup:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 891
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->llFigureFunction:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 892
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->llPenFunction:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 893
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->llFlipFunction:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 894
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->llBgFunction:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 896
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbPen:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 897
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbCenter:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 898
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbFlip:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 899
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbBgColor:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 900
    iget v0, p0, Lcn/codemao/android/sketch/SketchActivity;->type:I

    const/16 v3, 0x1a

    if-ne v0, v3, :cond_3b

    .line 901
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->radioGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 904
    :cond_3b
    iget v0, p0, Lcn/codemao/android/sketch/SketchActivity;->mode:I

    if-eqz v0, :cond_92

    const/4 v3, 0x1

    if-eq v0, v3, :cond_87

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6b

    const/4 v2, 0x4

    if-eq v0, v2, :cond_65

    const/4 v2, 0x5

    if-eq v0, v2, :cond_5a

    const/4 v2, 0x6

    if-eq v0, v2, :cond_4f

    goto :goto_a8

    .line 937
    :cond_4f
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->llBgFunction:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 938
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbBgColor:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_a8

    .line 933
    :cond_5a
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbFlip:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 934
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->llFlipFunction:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_a8

    .line 927
    :cond_65
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbCenter:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_a8

    .line 918
    :cond_6b
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->radioGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 919
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->llFigureFunction:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 920
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/SketchViewV4;->setPaintType(I)V

    .line 921
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {v0, v3}, Lcn/codemao/android/sketch/view/SketchViewV4;->setMode(I)V

    .line 922
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rlTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a8

    .line 914
    :cond_87
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->rbPen:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 915
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->llPenFunction:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a8

    .line 906
    :cond_92
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->llFigureFunction:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 907
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->llPenFunction:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 909
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->ivLine:Landroid/widget/ImageView;

    sget v2, Lcn/codemao/android/sketch/R$mipmap;->icn_shape_line:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 910
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/SketchViewV4;->setIsDrawingLine(Z)V

    :goto_a8
    return-void
.end method


# virtual methods
.method protected checkMorePermission([Ljava/lang/String;)Z
    .registers 6

    .line 1048
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1052
    :goto_a
    array-length v3, p1

    if-ge v2, v3, :cond_1a

    .line 1053
    aget-object v3, p1, v2

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_17

    const/4 p1, 0x1

    goto :goto_1b

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    if-eqz p1, :cond_1e

    return v0

    :cond_1e
    return v1
.end method

.method public getVirtualBarHeight()I
    .registers 9

    const-string v0, "window"

    .line 1177
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1178
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1179
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const/4 v2, 0x0

    :try_start_12
    const-string v3, "android.view.Display"

    .line 1182
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getRealMetrics"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    .line 1184
    const-class v7, Landroid/util/DisplayMetrics;

    aput-object v7, v6, v2

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v2

    .line 1185
    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_32} :catch_35

    sub-int v2, v1, v0

    goto :goto_39

    :catch_35
    move-exception v0

    .line 1188
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_39
    return v2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .line 1076
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    .line 1077
    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/SketchActivity;->resetClick(Z)V

    .line 1078
    iput v0, p0, Lcn/codemao/android/sketch/SketchActivity;->mode:I

    const/16 v1, 0x4d3

    if-ne p1, v1, :cond_20

    if-ne p2, v1, :cond_20

    .line 1082
    invoke-static {}, Lcn/codemao/android/sketch/utils/EditorBitmapCache;->getInstance()Lcn/codemao/android/sketch/utils/EditorBitmapCache;

    move-result-object v1

    const-string v2, "TRIMMED_BITMAP"

    invoke-virtual {v1, v2}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 1083
    iget-object v2, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {v2, v1}, Lcn/codemao/android/sketch/view/SketchViewV4;->addEditBitmap(Landroid/graphics/Bitmap;)V

    :cond_20
    const/16 v1, 0x4d2

    if-ne p1, v1, :cond_7b

    if-ne p2, v1, :cond_7b

    const-string p1, "text"

    .line 1096
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcn/codemao/android/sketch/model/TextVO;

    if-nez p1, :cond_31

    return-void

    .line 1098
    :cond_31
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/TextVO;->isUpdate()Z

    move-result p2

    if-eqz p2, :cond_5a

    .line 1099
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/TextVO;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 1100
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/SketchViewV4;->clearTextContent()V

    goto :goto_76

    .line 1102
    :cond_4b
    iget-object p2, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p2, p1}, Lcn/codemao/android/sketch/view/SketchViewV4;->setTextColor(Lcn/codemao/android/sketch/model/TextVO;)V

    .line 1103
    iget-object p2, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/TextVO;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcn/codemao/android/sketch/view/SketchViewV4;->setChangeText(Ljava/lang/String;)V

    goto :goto_76

    .line 1105
    :cond_5a
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/TextVO;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_76

    .line 1106
    iget-object p2, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/TextVO;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcn/codemao/android/sketch/view/SketchViewV4;->addText(Ljava/lang/String;)V

    .line 1107
    iget-object p2, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p2, p1}, Lcn/codemao/android/sketch/view/SketchViewV4;->setTextColor(Lcn/codemao/android/sketch/model/TextVO;)V

    .line 1109
    :cond_76
    :goto_76
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/view/SketchViewV4;->setTextInputing(Z)V

    :cond_7b
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 1115
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->mAlertDialog:Lcn/codemao/android/sketch/view/MAlertDialog;

    if-nez v0, :cond_10

    .line 1116
    new-instance v0, Lcn/codemao/android/sketch/view/MAlertDialog;

    new-instance v1, Lcn/codemao/android/sketch/SketchActivity$12;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/SketchActivity$12;-><init>(Lcn/codemao/android/sketch/SketchActivity;)V

    invoke-direct {v0, p0, v1}, Lcn/codemao/android/sketch/view/MAlertDialog;-><init>(Landroid/content/Context;Lcn/codemao/android/sketch/listener/DialogListener;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->mAlertDialog:Lcn/codemao/android/sketch/view/MAlertDialog;

    .line 1123
    :cond_10
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->mAlertDialog:Lcn/codemao/android/sketch/view/MAlertDialog;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/MAlertDialog;->showDialog()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 15

    .line 608
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 609
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_size_one:I

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1e

    .line 610
    iput v2, p0, Lcn/codemao/android/sketch/SketchActivity;->paintWitdhType:I

    .line 611
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, v1}, Lcn/codemao/android/sketch/view/SketchViewV4;->setPaintType(I)V

    .line 612
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->tvEraser:Landroid/widget/ImageView;

    sget v0, Lcn/codemao/android/sketch/R$mipmap;->icn_eraser_nor:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 613
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;->setSizeChooseColor()V

    goto/16 :goto_4ec

    .line 614
    :cond_1e
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_size_two:I

    const/4 v3, 0x1

    if-ne p1, v0, :cond_36

    .line 615
    iput v3, p0, Lcn/codemao/android/sketch/SketchActivity;->paintWitdhType:I

    .line 616
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, v1}, Lcn/codemao/android/sketch/view/SketchViewV4;->setPaintType(I)V

    .line 617
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->tvEraser:Landroid/widget/ImageView;

    sget v0, Lcn/codemao/android/sketch/R$mipmap;->icn_eraser_nor:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 618
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;->setSizeChooseColor()V

    goto/16 :goto_4ec

    .line 620
    :cond_36
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_size_three:I

    const/4 v4, 0x2

    if-ne p1, v0, :cond_4e

    .line 621
    iput v4, p0, Lcn/codemao/android/sketch/SketchActivity;->paintWitdhType:I

    .line 622
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, v1}, Lcn/codemao/android/sketch/view/SketchViewV4;->setPaintType(I)V

    .line 623
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->tvEraser:Landroid/widget/ImageView;

    sget v0, Lcn/codemao/android/sketch/R$mipmap;->icn_eraser_nor:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 624
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;->setSizeChooseColor()V

    goto/16 :goto_4ec

    .line 626
    :cond_4e
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_size_four:I

    const/4 v5, 0x3

    if-ne p1, v0, :cond_66

    .line 627
    iput v5, p0, Lcn/codemao/android/sketch/SketchActivity;->paintWitdhType:I

    .line 628
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, v1}, Lcn/codemao/android/sketch/view/SketchViewV4;->setPaintType(I)V

    .line 629
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->tvEraser:Landroid/widget/ImageView;

    sget v0, Lcn/codemao/android/sketch/R$mipmap;->icn_eraser_nor:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 630
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;->setSizeChooseColor()V

    goto/16 :goto_4ec

    .line 631
    :cond_66
    sget v0, Lcn/codemao/android/sketch/R$id;->tv_revoke:I

    if-ne p1, v0, :cond_71

    .line 632
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/SketchViewV4;->revokePen()V

    goto/16 :goto_4ec

    .line 633
    :cond_71
    sget v0, Lcn/codemao/android/sketch/R$id;->rb_pen:I

    const/16 v6, 0x16

    const/16 v7, 0x17

    const/16 v8, 0x1b

    const/16 v9, 0x19

    const/16 v10, 0x18

    const/16 v11, 0x15

    const/4 v12, -0x1

    if-ne p1, v0, :cond_f1

    .line 634
    iget p1, p0, Lcn/codemao/android/sketch/SketchActivity;->type:I

    if-eq p1, v11, :cond_bf

    if-ne p1, v10, :cond_89

    goto :goto_bf

    :cond_89
    if-eq p1, v9, :cond_b0

    if-ne p1, v8, :cond_8e

    goto :goto_b0

    :cond_8e
    if-ne p1, v7, :cond_9f

    .line 639
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcn/codemao/android/sketch/model/PanelEvent;

    const-string v4, "background_drawboard_paint"

    invoke-direct {v0, v4}, Lcn/codemao/android/sketch/model/PanelEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_cd

    :cond_9f
    if-ne p1, v6, :cond_cd

    .line 641
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcn/codemao/android/sketch/model/PanelEvent;

    const-string v4, "background_upload_paint"

    invoke-direct {v0, v4}, Lcn/codemao/android/sketch/model/PanelEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_cd

    .line 637
    :cond_b0
    :goto_b0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcn/codemao/android/sketch/model/PanelEvent;

    const-string v4, "actor_upload_paint"

    invoke-direct {v0, v4}, Lcn/codemao/android/sketch/model/PanelEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_cd

    .line 635
    :cond_bf
    :goto_bf
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcn/codemao/android/sketch/model/PanelEvent;

    const-string v4, "actor_drawboard_paint"

    invoke-direct {v0, v4}, Lcn/codemao/android/sketch/model/PanelEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 643
    :cond_cd
    :goto_cd
    iget p1, p0, Lcn/codemao/android/sketch/SketchActivity;->mode:I

    if-ne p1, v3, :cond_d9

    .line 644
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, v12}, Lcn/codemao/android/sketch/view/SketchViewV4;->setMode(I)V

    .line 645
    iput v2, p0, Lcn/codemao/android/sketch/SketchActivity;->mode:I

    goto :goto_ec

    .line 647
    :cond_d9
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, v2}, Lcn/codemao/android/sketch/view/SketchViewV4;->setMode(I)V

    .line 648
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, v1}, Lcn/codemao/android/sketch/view/SketchViewV4;->setPaintType(I)V

    .line 649
    iput v3, p0, Lcn/codemao/android/sketch/SketchActivity;->mode:I

    .line 650
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->tvEraser:Landroid/widget/ImageView;

    sget v0, Lcn/codemao/android/sketch/R$mipmap;->icn_eraser_nor:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 652
    :goto_ec
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;->updateView()V

    goto/16 :goto_4ec

    .line 653
    :cond_f1
    sget v0, Lcn/codemao/android/sketch/R$id;->rb_text:I

    if-ne p1, v0, :cond_173

    .line 655
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/codemao/android/sketch/SketchActivity;->lastClickText:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-gez p1, :cond_103

    return-void

    .line 657
    :cond_103
    iget p1, p0, Lcn/codemao/android/sketch/SketchActivity;->type:I

    if-eq p1, v11, :cond_140

    if-ne p1, v10, :cond_10a

    goto :goto_140

    :cond_10a
    if-eq p1, v9, :cond_131

    if-ne p1, v8, :cond_10f

    goto :goto_131

    :cond_10f
    if-ne p1, v7, :cond_120

    .line 662
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcn/codemao/android/sketch/model/PanelEvent;

    const-string v1, "background_drawboard_text"

    invoke-direct {v0, v1}, Lcn/codemao/android/sketch/model/PanelEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_14e

    :cond_120
    if-ne p1, v6, :cond_14e

    .line 664
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcn/codemao/android/sketch/model/PanelEvent;

    const-string v1, "background_upload_text"

    invoke-direct {v0, v1}, Lcn/codemao/android/sketch/model/PanelEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_14e

    .line 660
    :cond_131
    :goto_131
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcn/codemao/android/sketch/model/PanelEvent;

    const-string v1, "actor_upload_text"

    invoke-direct {v0, v1}, Lcn/codemao/android/sketch/model/PanelEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_14e

    .line 658
    :cond_140
    :goto_140
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcn/codemao/android/sketch/model/PanelEvent;

    const-string v1, "actor_drawboard_text"

    invoke-direct {v0, v1}, Lcn/codemao/android/sketch/model/PanelEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 666
    :cond_14e
    :goto_14e
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/codemao/android/sketch/activity/EditActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x4d2

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 667
    sget p1, Lcn/codemao/android/sketch/R$anim;->bottom_in:I

    sget v0, Lcn/codemao/android/sketch/R$anim;->bottom_out:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 668
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/codemao/android/sketch/SketchActivity;->lastClickText:J

    .line 669
    iput v5, p0, Lcn/codemao/android/sketch/SketchActivity;->mode:I

    .line 670
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;->updateView()V

    .line 671
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, v12}, Lcn/codemao/android/sketch/view/SketchViewV4;->setMode(I)V

    goto/16 :goto_4ec

    .line 672
    :cond_173
    sget v0, Lcn/codemao/android/sketch/R$id;->iv_eraser:I

    if-ne p1, v0, :cond_19d

    .line 673
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/SketchViewV4;->getPaintType()I

    move-result p1

    if-ne p1, v1, :cond_18f

    .line 674
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->tvEraser:Landroid/widget/ImageView;

    sget v0, Lcn/codemao/android/sketch/R$mipmap;->icn_eraser_act:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 675
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    const/16 v0, 0x3ea

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/view/SketchViewV4;->setPaintType(I)V

    goto/16 :goto_4ec

    .line 677
    :cond_18f
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->tvEraser:Landroid/widget/ImageView;

    sget v0, Lcn/codemao/android/sketch/R$mipmap;->icn_eraser_nor:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 678
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, v1}, Lcn/codemao/android/sketch/view/SketchViewV4;->setPaintType(I)V

    goto/16 :goto_4ec

    .line 680
    :cond_19d
    sget v0, Lcn/codemao/android/sketch/R$id;->rb_figure:I

    if-ne p1, v0, :cond_200

    .line 681
    iget p1, p0, Lcn/codemao/android/sketch/SketchActivity;->type:I

    if-eq p1, v11, :cond_1de

    if-ne p1, v10, :cond_1a8

    goto :goto_1de

    :cond_1a8
    if-eq p1, v9, :cond_1cf

    if-ne p1, v8, :cond_1ad

    goto :goto_1cf

    :cond_1ad
    if-ne p1, v7, :cond_1be

    .line 686
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcn/codemao/android/sketch/model/PanelEvent;

    const-string v1, "background_drawboard_shape"

    invoke-direct {v0, v1}, Lcn/codemao/android/sketch/model/PanelEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1ec

    :cond_1be
    if-ne p1, v6, :cond_1ec

    .line 688
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcn/codemao/android/sketch/model/PanelEvent;

    const-string v1, "background_upload_shape"

    invoke-direct {v0, v1}, Lcn/codemao/android/sketch/model/PanelEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1ec

    .line 684
    :cond_1cf
    :goto_1cf
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcn/codemao/android/sketch/model/PanelEvent;

    const-string v1, "actor_upload_shape"

    invoke-direct {v0, v1}, Lcn/codemao/android/sketch/model/PanelEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1ec

    .line 682
    :cond_1de
    :goto_1de
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcn/codemao/android/sketch/model/PanelEvent;

    const-string v1, "actor_drawboard_shape"

    invoke-direct {v0, v1}, Lcn/codemao/android/sketch/model/PanelEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 690
    :cond_1ec
    :goto_1ec
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, v3}, Lcn/codemao/android/sketch/view/SketchViewV4;->setMode(I)V

    .line 691
    iput v4, p0, Lcn/codemao/android/sketch/SketchActivity;->mode:I

    .line 692
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;->updateView()V

    .line 693
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->figrueColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 694
    invoke-direct {p0, v2}, Lcn/codemao/android/sketch/SketchActivity;->isShowTop(Z)V

    goto/16 :goto_4ec

    .line 695
    :cond_200
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_rect:I

    if-ne p1, v0, :cond_20b

    .line 696
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, v5}, Lcn/codemao/android/sketch/view/SketchViewV4;->addFigure(I)V

    goto/16 :goto_4ec

    .line 697
    :cond_20b
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_r_rect:I

    if-ne p1, v0, :cond_216

    .line 698
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, v3}, Lcn/codemao/android/sketch/view/SketchViewV4;->addFigure(I)V

    goto/16 :goto_4ec

    .line 700
    :cond_216
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_line:I

    if-ne p1, v0, :cond_23e

    .line 701
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/SketchViewV4;->isDrawingLine()Z

    move-result p1

    if-eqz p1, :cond_230

    .line 702
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->ivLine:Landroid/widget/ImageView;

    sget v0, Lcn/codemao/android/sketch/R$mipmap;->icn_shape_line:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 703
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, v2}, Lcn/codemao/android/sketch/view/SketchViewV4;->setIsDrawingLine(Z)V

    goto/16 :goto_4ec

    .line 705
    :cond_230
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->ivLine:Landroid/widget/ImageView;

    sget v0, Lcn/codemao/android/sketch/R$mipmap;->icn_shape_line_act:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 706
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, v3}, Lcn/codemao/android/sketch/view/SketchViewV4;->setIsDrawingLine(Z)V

    goto/16 :goto_4ec

    .line 708
    :cond_23e
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_oval:I

    const/4 v1, 0x4

    if-ne p1, v0, :cond_24a

    .line 709
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, v1}, Lcn/codemao/android/sketch/view/SketchViewV4;->addFigure(I)V

    goto/16 :goto_4ec

    .line 710
    :cond_24a
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_traingle:I

    const/4 v4, 0x6

    if-ne p1, v0, :cond_256

    .line 711
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, v4}, Lcn/codemao/android/sketch/view/SketchViewV4;->addFigure(I)V

    goto/16 :goto_4ec

    .line 712
    :cond_256
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_done:I

    if-ne p1, v0, :cond_2ad

    .line 713
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->ivDone:Landroid/widget/ImageView;

    const/high16 v0, 0x3f000000  # 0.5f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 714
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;->stopClick()V

    .line 715
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/SketchViewV4;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_276

    .line 716
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/utils/ToastUtils;->showNotNull()V

    .line 717
    invoke-direct {p0, v2}, Lcn/codemao/android/sketch/SketchActivity;->resetClick(Z)V

    goto/16 :goto_4ec

    .line 719
    :cond_276
    iget p1, p0, Lcn/codemao/android/sketch/SketchActivity;->type:I

    const/16 v0, 0x1a

    if-ne p1, v0, :cond_2a8

    .line 720
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/SketchViewV4;->getEditCenterPoint()Lcn/codemao/android/sketch/model/CenterPointInfo;

    move-result-object p1

    .line 721
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 722
    new-instance v1, Lcn/codemao/android/sketch/model/ResultInfo;

    invoke-direct {v1}, Lcn/codemao/android/sketch/model/ResultInfo;-><init>()V

    .line 723
    sget v2, Lcn/codemao/android/sketch/model/ResultInfo;->RESULT_CODE_SUCCESS:I

    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/model/ResultInfo;->setResultCode(I)V

    .line 724
    iget v2, p1, Lcn/codemao/android/sketch/model/CenterPointInfo;->finalX:F

    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/model/ResultInfo;->setCenterPointX(F)V

    .line 725
    iget p1, p1, Lcn/codemao/android/sketch/model/CenterPointInfo;->finalY:F

    invoke-virtual {v1, p1}, Lcn/codemao/android/sketch/model/ResultInfo;->setCenterPointY(F)V

    const-string p1, "resultInfo"

    .line 726
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 727
    invoke-virtual {p0, v12, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 728
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_4ec

    .line 730
    :cond_2a8
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;->saveBitmap()V

    goto/16 :goto_4ec

    .line 734
    :cond_2ad
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_figure_close:I

    if-ne p1, v0, :cond_2c0

    .line 735
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, v12}, Lcn/codemao/android/sketch/view/SketchViewV4;->setMode(I)V

    .line 736
    iput v2, p0, Lcn/codemao/android/sketch/SketchActivity;->mode:I

    .line 737
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;->updateView()V

    .line 738
    invoke-direct {p0, v3}, Lcn/codemao/android/sketch/SketchActivity;->isShowTop(Z)V

    goto/16 :goto_4ec

    .line 739
    :cond_2c0
    sget v0, Lcn/codemao/android/sketch/R$id;->tv_name:I

    if-ne p1, v0, :cond_301

    .line 740
    iget-boolean p1, p0, Lcn/codemao/android/sketch/SketchActivity;->isKeyboardShowing:Z

    if-nez p1, :cond_4ec

    .line 741
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;->stopClick()V

    .line 742
    iput-boolean v3, p0, Lcn/codemao/android/sketch/SketchActivity;->isKeyboardShowing:Z

    .line 743
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 744
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->tvName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->curName:Ljava/lang/String;

    .line 745
    iput v2, p0, Lcn/codemao/android/sketch/SketchActivity;->mode:I

    .line 746
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, v12}, Lcn/codemao/android/sketch/view/SketchViewV4;->setMode(I)V

    .line 747
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;->updateView()V

    .line 749
    iput-boolean v3, p0, Lcn/codemao/android/sketch/SketchActivity;->isShowingKeyBoard:Z

    .line 750
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->tvName:Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 751
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->tvName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    .line 752
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->ivNameEdit:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4ec

    .line 754
    :cond_301
    sget v0, Lcn/codemao/android/sketch/R$id;->iv_name_edit:I

    if-ne p1, v0, :cond_346

    .line 755
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;->stopClick()V

    .line 756
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 757
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->tvName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 758
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->tvName:Landroid/widget/EditText;

    invoke-static {p1}, Lcn/codemao/android/sketch/utils/SoftInputUtils;->openSoftInput(Landroid/view/View;)V

    .line 759
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->tvName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->curName:Ljava/lang/String;

    .line 760
    iput v2, p0, Lcn/codemao/android/sketch/SketchActivity;->mode:I

    .line 761
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, v12}, Lcn/codemao/android/sketch/view/SketchViewV4;->setMode(I)V

    .line 762
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;->updateView()V

    .line 764
    iput-boolean v3, p0, Lcn/codemao/android/sketch/SketchActivity;->isShowingKeyBoard:Z

    .line 765
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->tvName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    .line 766
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->tvName:Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 767
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->ivNameEdit:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4ec

    .line 768
    :cond_346
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_close:I

    if-ne p1, v0, :cond_361

    .line 769
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->mAlertDialog:Lcn/codemao/android/sketch/view/MAlertDialog;

    if-nez p1, :cond_35a

    .line 770
    new-instance p1, Lcn/codemao/android/sketch/view/MAlertDialog;

    new-instance v0, Lcn/codemao/android/sketch/SketchActivity$10;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/SketchActivity$10;-><init>(Lcn/codemao/android/sketch/SketchActivity;)V

    invoke-direct {p1, p0, v0}, Lcn/codemao/android/sketch/view/MAlertDialog;-><init>(Landroid/content/Context;Lcn/codemao/android/sketch/listener/DialogListener;)V

    iput-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->mAlertDialog:Lcn/codemao/android/sketch/view/MAlertDialog;

    .line 777
    :cond_35a
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->mAlertDialog:Lcn/codemao/android/sketch/view/MAlertDialog;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/MAlertDialog;->showDialog()V

    goto/16 :goto_4ec

    .line 778
    :cond_361
    sget v0, Lcn/codemao/android/sketch/R$id;->rl_figure_save:I

    if-ne p1, v0, :cond_374

    .line 779
    iput v2, p0, Lcn/codemao/android/sketch/SketchActivity;->mode:I

    .line 780
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;->updateView()V

    .line 781
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/SketchViewV4;->saveFigure()V

    .line 782
    invoke-direct {p0, v3}, Lcn/codemao/android/sketch/SketchActivity;->isShowTop(Z)V

    goto/16 :goto_4ec

    .line 783
    :cond_374
    sget v0, Lcn/codemao/android/sketch/R$id;->rb_center:I

    if-ne p1, v0, :cond_402

    .line 784
    iget p1, p0, Lcn/codemao/android/sketch/SketchActivity;->type:I

    if-eq p1, v11, :cond_3b5

    if-ne p1, v10, :cond_37f

    goto :goto_3b5

    :cond_37f
    if-eq p1, v9, :cond_3a6

    if-ne p1, v8, :cond_384

    goto :goto_3a6

    :cond_384
    if-ne p1, v7, :cond_395

    .line 789
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcn/codemao/android/sketch/model/PanelEvent;

    const-string v4, "background_drawboard_center"

    invoke-direct {v0, v4}, Lcn/codemao/android/sketch/model/PanelEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_3c3

    :cond_395
    if-ne p1, v6, :cond_3c3

    .line 791
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcn/codemao/android/sketch/model/PanelEvent;

    const-string v4, "background_upload_center"

    invoke-direct {v0, v4}, Lcn/codemao/android/sketch/model/PanelEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_3c3

    .line 787
    :cond_3a6
    :goto_3a6
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcn/codemao/android/sketch/model/PanelEvent;

    const-string v4, "actor_upload_center"

    invoke-direct {v0, v4}, Lcn/codemao/android/sketch/model/PanelEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_3c3

    .line 785
    :cond_3b5
    :goto_3b5
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcn/codemao/android/sketch/model/PanelEvent;

    const-string v4, "actor_drawboard_center"

    invoke-direct {v0, v4}, Lcn/codemao/android/sketch/model/PanelEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 793
    :cond_3c3
    :goto_3c3
    iget p1, p0, Lcn/codemao/android/sketch/SketchActivity;->mode:I

    if-eq p1, v1, :cond_3f6

    .line 794
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;->stopClick()V

    .line 795
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/SketchViewV4;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3db

    .line 796
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/utils/ToastUtils;->showNotNull()V

    .line 797
    invoke-direct {p0, v2}, Lcn/codemao/android/sketch/SketchActivity;->resetClick(Z)V

    goto :goto_3f2

    .line 798
    :cond_3db
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/SketchViewV4;->checkCenterBitmap()Z

    move-result p1

    if-eqz p1, :cond_3eb

    .line 799
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, v5}, Lcn/codemao/android/sketch/view/SketchViewV4;->setMode(I)V

    .line 800
    iput v1, p0, Lcn/codemao/android/sketch/SketchActivity;->mode:I

    goto :goto_3f2

    .line 802
    :cond_3eb
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/utils/ToastUtils;->showNotNull()V

    .line 803
    iput v2, p0, Lcn/codemao/android/sketch/SketchActivity;->mode:I

    .line 805
    :goto_3f2
    invoke-direct {p0, v3}, Lcn/codemao/android/sketch/SketchActivity;->resetClick(Z)V

    goto :goto_3fd

    .line 807
    :cond_3f6
    iput v2, p0, Lcn/codemao/android/sketch/SketchActivity;->mode:I

    .line 808
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, v12}, Lcn/codemao/android/sketch/view/SketchViewV4;->setMode(I)V

    .line 810
    :goto_3fd
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;->updateView()V

    goto/16 :goto_4ec

    .line 811
    :cond_402
    sget v0, Lcn/codemao/android/sketch/R$id;->iv_figure_delete:I

    if-ne p1, v0, :cond_40d

    .line 812
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/SketchViewV4;->deleteFigure()V

    goto/16 :goto_4ec

    .line 813
    :cond_40d
    sget v0, Lcn/codemao/android/sketch/R$id;->tv_input_finish:I

    if-ne p1, v0, :cond_41f

    .line 814
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->editText:Landroid/widget/EditText;

    invoke-static {p1}, Lcn/codemao/android/sketch/utils/SoftInputUtils;->hideSoftInput(Landroid/view/View;)V

    .line 815
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->llTextFunction:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4ec

    .line 816
    :cond_41f
    sget v0, Lcn/codemao/android/sketch/R$id;->rb_flip:I

    if-ne p1, v0, :cond_44a

    .line 817
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcn/codemao/android/sketch/model/PanelEvent;

    const-string v1, "background_upload_flip"

    invoke-direct {v0, v1}, Lcn/codemao/android/sketch/model/PanelEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 818
    iget p1, p0, Lcn/codemao/android/sketch/SketchActivity;->mode:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_43e

    .line 819
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, v12}, Lcn/codemao/android/sketch/view/SketchViewV4;->setMode(I)V

    .line 820
    iput v2, p0, Lcn/codemao/android/sketch/SketchActivity;->mode:I

    goto :goto_445

    .line 822
    :cond_43e
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, v12}, Lcn/codemao/android/sketch/view/SketchViewV4;->setMode(I)V

    .line 823
    iput v0, p0, Lcn/codemao/android/sketch/SketchActivity;->mode:I

    .line 825
    :goto_445
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;->updateView()V

    goto/16 :goto_4ec

    .line 826
    :cond_44a
    sget v0, Lcn/codemao/android/sketch/R$id;->rb_back_paint:I

    if-ne p1, v0, :cond_4b0

    .line 827
    iget p1, p0, Lcn/codemao/android/sketch/SketchActivity;->type:I

    if-eq p1, v11, :cond_48b

    if-ne p1, v10, :cond_455

    goto :goto_48b

    :cond_455
    if-eq p1, v9, :cond_47c

    if-ne p1, v8, :cond_45a

    goto :goto_47c

    :cond_45a
    if-ne p1, v7, :cond_46b

    .line 832
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcn/codemao/android/sketch/model/PanelEvent;

    const-string v1, "background_drawboard_fill"

    invoke-direct {v0, v1}, Lcn/codemao/android/sketch/model/PanelEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_499

    :cond_46b
    if-ne p1, v6, :cond_499

    .line 834
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcn/codemao/android/sketch/model/PanelEvent;

    const-string v1, "background_upload_fill"

    invoke-direct {v0, v1}, Lcn/codemao/android/sketch/model/PanelEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_499

    .line 830
    :cond_47c
    :goto_47c
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcn/codemao/android/sketch/model/PanelEvent;

    const-string v1, "actor_upload_fill"

    invoke-direct {v0, v1}, Lcn/codemao/android/sketch/model/PanelEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_499

    .line 828
    :cond_48b
    :goto_48b
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcn/codemao/android/sketch/model/PanelEvent;

    const-string v1, "actor_drawboard_fill"

    invoke-direct {v0, v1}, Lcn/codemao/android/sketch/model/PanelEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 836
    :cond_499
    :goto_499
    iget p1, p0, Lcn/codemao/android/sketch/SketchActivity;->mode:I

    if-ne p1, v4, :cond_4a5

    .line 837
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, v12}, Lcn/codemao/android/sketch/view/SketchViewV4;->setMode(I)V

    .line 838
    iput v2, p0, Lcn/codemao/android/sketch/SketchActivity;->mode:I

    goto :goto_4a7

    .line 840
    :cond_4a5
    iput v4, p0, Lcn/codemao/android/sketch/SketchActivity;->mode:I

    .line 843
    :goto_4a7
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;->updateView()V

    .line 844
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, v12}, Lcn/codemao/android/sketch/view/SketchViewV4;->setMode(I)V

    goto :goto_4ec

    .line 845
    :cond_4b0
    sget v0, Lcn/codemao/android/sketch/R$id;->rb_cut_out:I

    if-ne p1, v0, :cond_4ec

    .line 846
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcn/codemao/android/sketch/model/PanelEvent;

    const-string v1, "actor_upload_crop"

    invoke-direct {v0, v1}, Lcn/codemao/android/sketch/model/PanelEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 847
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;->stopClick()V

    .line 848
    invoke-direct {p0, v3}, Lcn/codemao/android/sketch/SketchActivity;->resetClick(Z)V

    .line 849
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/SketchViewV4;->getCutoutBitmapInfo()Lcn/codemao/android/sketch/model/CutoutBitmapInfo;

    move-result-object p1

    if-nez p1, :cond_4d8

    .line 851
    iput v2, p0, Lcn/codemao/android/sketch/SketchActivity;->mode:I

    .line 852
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/utils/ToastUtils;->showNotNull()V

    goto :goto_4e4

    :cond_4d8
    const/4 p1, 0x7

    .line 854
    iput p1, p0, Lcn/codemao/android/sketch/SketchActivity;->mode:I

    .line 855
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/SketchViewV4;->getCutoutBitmapInfo()Lcn/codemao/android/sketch/model/CutoutBitmapInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/SketchActivity;->startCutActivity(Lcn/codemao/android/sketch/model/CutoutBitmapInfo;)V

    .line 857
    :goto_4e4
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1, v12}, Lcn/codemao/android/sketch/view/SketchViewV4;->setMode(I)V

    .line 858
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;->updateView()V

    :cond_4ec
    :goto_4ec
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 154
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;->initData()V

    .line 156
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;->initView()V

    .line 157
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;->initViewSize()V

    .line 158
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->rvPenColor:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 159
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->rvPenColor:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->penColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 160
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->rvFigureColor:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v0, p0, v1, v2, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 161
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->rvFigureColor:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->figrueColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 162
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->rvTextColor:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v0, p0, v1, v2, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 163
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->rvTextColor:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->textColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 164
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->rvBgColor:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v0, p0, v1, v2, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 165
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->rvBgColor:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->bgColorAdapter:Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 1169
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1170
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/SketchViewV4;->onDestroy()V

    .line 1171
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->delayHelper:Lcn/codemao/android/sketch/utils/TimerHelper;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/utils/TimerHelper;->stopTime()V

    .line 1172
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method
