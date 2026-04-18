.class public Lcn/codemao/android/sketch/SketchActivity2;
.super Lcn/codemao/android/sketch/activity/BaseActivity;
.source "SketchActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/codemao/android/sketch/listener/ChangePaintListener;


# static fields
.field public static NOTCHMARGIN:I


# instance fields
.field private bgBitmap:Landroid/graphics/Bitmap;

.field private ccv_preview:Lcn/codemao/android/sketch/view/CircleColorView;

.field private colorMenu:Lcn/codemao/android/sketch/view/menu/ColorMenu;

.field private fileName:Ljava/lang/String;

.field private hasInit:Z

.field private hasNotch:Z

.field private isBackGroundEdit:Z

.field private isLandscapeStage:Z

.field private iv_close:Landroid/view/View;

.field private iv_done:Landroid/view/View;

.field private mCacheBitmap:Landroid/graphics/Bitmap;

.field private materialBitmap:Landroid/graphics/Bitmap;

.field private mirrorMenu:Lcn/codemao/android/sketch/view/menu/MirrorMenu;

.field private operate_menu:Lcn/codemao/android/sketch/view/menu/OperateMenu;

.field public permissions:[Ljava/lang/String;

.field private previewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private reject:Z

.field private roleName:Ljava/lang/String;

.field private rootview:Landroid/view/View;

.field private scrawlMenu:Lcn/codemao/android/sketch/view/menu/ScrawlMenu;

.field private screenHeight:I

.field private srcBitmap:Landroid/graphics/Bitmap;

.field private sv5:Lcn/codemao/android/sketch/view/SketchViewV5;

.field private toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

.field private tool_left:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

.field private type:I


# direct methods
.method public static synthetic $r8$lambda$ToJQEI4LNtf6SqYwHM1MeaIZSWQ(Lcn/codemao/android/sketch/SketchActivity2;Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/SketchActivity2;->lambda$onCreate$0(Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 69
    invoke-direct {p0}, Lcn/codemao/android/sketch/activity/BaseActivity;-><init>()V

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 72
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->permissions:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->isBackGroundEdit:Z

    const/4 v1, 0x3

    .line 86
    iput v1, p0, Lcn/codemao/android/sketch/SketchActivity2;->type:I

    const/4 v1, 0x0

    .line 94
    iput-object v1, p0, Lcn/codemao/android/sketch/SketchActivity2;->srcBitmap:Landroid/graphics/Bitmap;

    .line 95
    iput-object v1, p0, Lcn/codemao/android/sketch/SketchActivity2;->bgBitmap:Landroid/graphics/Bitmap;

    .line 96
    iput-object v1, p0, Lcn/codemao/android/sketch/SketchActivity2;->materialBitmap:Landroid/graphics/Bitmap;

    .line 101
    iput-boolean v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->isLandscapeStage:Z

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/sketch/SketchActivity2;)Lcn/codemao/android/sketch/view/SketchViewV5;
    .registers 1

    .line 69
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity2;->sv5:Lcn/codemao/android/sketch/view/SketchViewV5;

    return-object p0
.end method

.method static synthetic access$100(Lcn/codemao/android/sketch/SketchActivity2;)I
    .registers 1

    .line 69
    iget p0, p0, Lcn/codemao/android/sketch/SketchActivity2;->type:I

    return p0
.end method

.method static synthetic access$1000(Lcn/codemao/android/sketch/SketchActivity2;)Landroid/view/ViewGroup$LayoutParams;
    .registers 1

    .line 69
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity2;->previewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object p0
.end method

.method static synthetic access$1100(Lcn/codemao/android/sketch/SketchActivity2;)Lcn/codemao/android/sketch/view/CircleColorView;
    .registers 1

    .line 69
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity2;->ccv_preview:Lcn/codemao/android/sketch/view/CircleColorView;

    return-object p0
.end method

.method static synthetic access$1200(Lcn/codemao/android/sketch/SketchActivity2;)Landroid/view/View;
    .registers 1

    .line 69
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity2;->iv_done:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/codemao/android/sketch/SketchActivity2;)Landroid/view/View;
    .registers 1

    .line 69
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity2;->iv_close:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcn/codemao/android/sketch/SketchActivity2;)Lcn/codemao/android/sketch/view/menu/OperateMenu;
    .registers 1

    .line 69
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity2;->operate_menu:Lcn/codemao/android/sketch/view/menu/OperateMenu;

    return-object p0
.end method

.method static synthetic access$300(Lcn/codemao/android/sketch/SketchActivity2;)Lcn/codemao/android/sketch/view/menu/ColorMenu;
    .registers 1

    .line 69
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity2;->colorMenu:Lcn/codemao/android/sketch/view/menu/ColorMenu;

    return-object p0
.end method

.method static synthetic access$400(Lcn/codemao/android/sketch/SketchActivity2;)Lcn/codemao/android/sketch/view/menu/ScrawlMenu;
    .registers 1

    .line 69
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity2;->scrawlMenu:Lcn/codemao/android/sketch/view/menu/ScrawlMenu;

    return-object p0
.end method

.method static synthetic access$500(Lcn/codemao/android/sketch/SketchActivity2;)Landroid/graphics/Bitmap;
    .registers 1

    .line 69
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity2;->materialBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$600(Lcn/codemao/android/sketch/SketchActivity2;)Lcn/codemao/android/sketch/view/menu/ToolsMenu;
    .registers 1

    .line 69
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity2;->tool_left:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    return-object p0
.end method

.method static synthetic access$700(Lcn/codemao/android/sketch/SketchActivity2;)Z
    .registers 1

    .line 69
    iget-boolean p0, p0, Lcn/codemao/android/sketch/SketchActivity2;->isBackGroundEdit:Z

    return p0
.end method

.method static synthetic access$800(Lcn/codemao/android/sketch/SketchActivity2;)Landroid/graphics/Bitmap;
    .registers 1

    .line 69
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity2;->bgBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$802(Lcn/codemao/android/sketch/SketchActivity2;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 69
    iput-object p1, p0, Lcn/codemao/android/sketch/SketchActivity2;->bgBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$900(Lcn/codemao/android/sketch/SketchActivity2;)Landroid/graphics/Bitmap;
    .registers 1

    .line 69
    iget-object p0, p0, Lcn/codemao/android/sketch/SketchActivity2;->srcBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$902(Lcn/codemao/android/sketch/SketchActivity2;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 69
    iput-object p1, p0, Lcn/codemao/android/sketch/SketchActivity2;->srcBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private delayInitView()V
    .registers 6

    .line 189
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->sv5:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v0, p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->bindActivity(Lcn/codemao/android/sketch/SketchActivity2;)V

    .line 190
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "roleName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->roleName:Ljava/lang/String;

    .line 191
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "savePath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->fileName:Ljava/lang/String;

    .line 194
    new-instance v0, Lcn/codemao/android/sketch/utils/ToastUtils;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/utils/ToastUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    .line 196
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->screenHeight:I

    .line 199
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->iv_done:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->iv_close:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->type:I

    const-string v1, "bgPath"

    const/4 v2, 0x0

    if-eqz v0, :cond_96

    const-string v3, "imagePath"

    const/4 v4, 0x1

    if-eq v0, v4, :cond_71

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4a

    goto :goto_bc

    .line 214
    :cond_4a
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isBackGroundEdit"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->isBackGroundEdit:Z

    .line 215
    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity2;->tool_left:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-virtual {v1, v0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->setAutoShowFirst(Z)V

    .line 216
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcn/codemao/android/sketch/SketchActivity2;->getBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->srcBitmap:Landroid/graphics/Bitmap;

    .line 217
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->mirrorMenu:Lcn/codemao/android/sketch/view/menu/MirrorMenu;

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity2;->sv5:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/menu/MirrorMenu;->bindSkectroller(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    goto :goto_bc

    .line 224
    :cond_71
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity2;->getBgCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->bgBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_87

    .line 226
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcn/codemao/android/sketch/SketchActivity2;->getBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->bgBitmap:Landroid/graphics/Bitmap;

    .line 228
    :cond_87
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcn/codemao/android/sketch/SketchActivity2;->getBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->srcBitmap:Landroid/graphics/Bitmap;

    goto :goto_bc

    .line 204
    :cond_96
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity2;->getBgCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->bgBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_ac

    .line 206
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcn/codemao/android/sketch/SketchActivity2;->getBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->bgBitmap:Landroid/graphics/Bitmap;

    .line 209
    :cond_ac
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "materialUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcn/codemao/android/sketch/SketchActivity2;->getBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->materialBitmap:Landroid/graphics/Bitmap;

    .line 232
    :goto_bc
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->operate_menu:Lcn/codemao/android/sketch/view/menu/OperateMenu;

    new-instance v1, Lcn/codemao/android/sketch/SketchActivity2$1;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/SketchActivity2$1;-><init>(Lcn/codemao/android/sketch/SketchActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 255
    sget v0, Lcn/codemao/android/sketch/R$id;->ccv_preview:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/CircleColorView;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->ccv_preview:Lcn/codemao/android/sketch/view/CircleColorView;

    .line 256
    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/CircleColorView;->setAutoDismiss()V

    .line 260
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->ccv_preview:Lcn/codemao/android/sketch/view/CircleColorView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->previewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 263
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->operate_menu:Lcn/codemao/android/sketch/view/menu/OperateMenu;

    new-instance v1, Lcn/codemao/android/sketch/SketchActivity2$2;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/SketchActivity2$2;-><init>(Lcn/codemao/android/sketch/SketchActivity2;)V

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/menu/OperateMenu;->addOnSlideChangeListener(Lcn/codemao/android/sketch/view/VerticalSeekBar$SlideChangeListener;)V

    .line 293
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->sv5:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v0, p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->addChangePaintListener(Lcn/codemao/android/sketch/listener/ChangePaintListener;)V

    .line 294
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->sv5:Lcn/codemao/android/sketch/view/SketchViewV5;

    new-instance v1, Lcn/codemao/android/sketch/SketchActivity2$3;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/SketchActivity2$3;-><init>(Lcn/codemao/android/sketch/SketchActivity2;)V

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/SketchViewV5;->addCanvasVariableWather(Lcn/codemao/android/sketch/listener/CanvasVariableWather;)V

    return-void
.end method

.method private findView()V
    .registers 3

    .line 173
    sget v0, Lcn/codemao/android/sketch/R$id;->sv5:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/SketchViewV5;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->sv5:Lcn/codemao/android/sketch/view/SketchViewV5;

    .line 174
    sget v0, Lcn/codemao/android/sketch/R$id;->tv_done:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->iv_done:Landroid/view/View;

    .line 175
    sget v0, Lcn/codemao/android/sketch/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->iv_close:Landroid/view/View;

    .line 176
    sget v0, Lcn/codemao/android/sketch/R$id;->scrawlMenu:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/menu/ScrawlMenu;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->scrawlMenu:Lcn/codemao/android/sketch/view/menu/ScrawlMenu;

    .line 177
    sget v0, Lcn/codemao/android/sketch/R$id;->colorMenu:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/menu/ColorMenu;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->colorMenu:Lcn/codemao/android/sketch/view/menu/ColorMenu;

    .line 178
    sget v0, Lcn/codemao/android/sketch/R$id;->rootview:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->rootview:Landroid/view/View;

    .line 179
    sget v0, Lcn/codemao/android/sketch/R$id;->mirrorMenu:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/menu/MirrorMenu;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->mirrorMenu:Lcn/codemao/android/sketch/view/menu/MirrorMenu;

    .line 180
    sget v0, Lcn/codemao/android/sketch/R$id;->tool_left:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->tool_left:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    .line 181
    sget v0, Lcn/codemao/android/sketch/R$id;->operate_menu:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/menu/OperateMenu;

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->operate_menu:Lcn/codemao/android/sketch/view/menu/OperateMenu;

    .line 183
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->sv5:Lcn/codemao/android/sketch/view/SketchViewV5;

    iget-boolean v1, p0, Lcn/codemao/android/sketch/SketchActivity2;->isLandscapeStage:Z

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/SketchViewV5;->setLandscapeStage(Z)V

    .line 184
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->operate_menu:Lcn/codemao/android/sketch/view/menu/OperateMenu;

    iget-boolean v1, p0, Lcn/codemao/android/sketch/SketchActivity2;->isLandscapeStage:Z

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/menu/OperateMenu;->setLandscapeStage(Z)V

    return-void
.end method

.method private getBgCacheBitmap()Landroid/graphics/Bitmap;
    .registers 5

    .line 317
    sget-object v0, Lcn/codemao/android/sketch/CodemaoSketch;->mBgCachePath:Ljava/lang/String;

    .line 318
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return-object v2

    .line 322
    :cond_a
    :try_start_a
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 323
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    :goto_1e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 327
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 329
    :cond_28
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 330
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 331
    array-length v3, v0

    invoke-static {v0, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_42} :catch_43

    return-object v0

    :catch_43
    return-object v2
.end method

.method private getBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .registers 6

    .line 341
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "file://"

    const-string v1, ""

    .line 342
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/android_asset/"

    .line 344
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 345
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/SketchActivity2;->initAssetImg(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_23

    .line 347
    :cond_1f
    invoke-direct {p0, p1, p2}, Lcn/codemao/android/sketch/SketchActivity2;->initFileImg(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_23
    if-nez p1, :cond_39

    .line 351
    iget p2, p0, Lcn/codemao/android/sketch/SketchActivity2;->type:I

    if-eqz p2, :cond_39

    .line 352
    iget-object p2, p0, Lcn/codemao/android/sketch/SketchActivity2;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    sget v0, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_enter_correct_image:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/codemao/android/sketch/utils/ToastUtils;->showCenterShortToast(Ljava/lang/CharSequence;)V

    .line 353
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_39

    :cond_38
    const/4 p1, 0x0

    :cond_39
    :goto_39
    return-object p1
.end method

.method private hideCloseAndDone()V
    .registers 5

    .line 703
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->iv_close:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_18

    const/4 v0, 0x1

    .line 704
    iget-object v2, p0, Lcn/codemao/android/sketch/SketchActivity2;->iv_close:Landroid/view/View;

    iget-object v3, p0, Lcn/codemao/android/sketch/SketchActivity2;->tool_left:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v2, v3}, Lcn/codemao/android/sketch/utils/AnimationUtil;->animHorAndAlpha(ZLandroid/view/View;F)V

    .line 706
    :cond_18
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->iv_done:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2e

    .line 707
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->iv_done:Landroid/view/View;

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity2;->colorMenu:Lcn/codemao/android/sketch/view/menu/ColorMenu;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/menu/ColorMenu;->getTranslationY()F

    move-result v1

    neg-float v1, v1

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/AnimationUtil;->animVer(Landroid/view/View;F)V

    :cond_2e
    return-void
.end method

.method private initAssetImg(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    .line 458
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 460
    :try_start_8
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 461
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 462
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception p1

    .line 465
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private initFileImg(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .registers 11

    .line 373
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10b

    .line 377
    :try_start_c
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 378
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 379
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_19} :catch_ee
    .catchall {:try_start_c .. :try_end_19} :catchall_ec

    .line 380
    :try_start_19
    invoke-static {v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 381
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 383
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 384
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v3, :cond_e1

    if-nez v4, :cond_29

    goto/16 :goto_e1

    .line 388
    :cond_29
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    .line 389
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    int-to-float v3, v3

    cmpg-float v7, v5, v3

    if-ltz v7, :cond_49

    int-to-float v7, v4

    cmpg-float v7, v6, v7

    if-gez v7, :cond_54

    :cond_49
    div-float v5, v3, v5

    int-to-float v7, v4

    div-float/2addr v7, v6

    .line 391
    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 394
    :cond_54
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_59} :catch_ea
    .catchall {:try_start_19 .. :try_end_59} :catchall_fe

    const/4 v2, 0x0

    .line 395
    :try_start_5a
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 396
    invoke-static {v5, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_60} :catch_de
    .catchall {:try_start_5a .. :try_end_60} :catchall_db

    if-nez v0, :cond_6b

    .line 446
    :try_start_62
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_6a

    :catch_66
    move-exception p1

    .line 448
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_6a
    return-object v1

    :cond_6b
    if-nez p2, :cond_76

    .line 446
    :try_start_6d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_75

    :catch_71
    move-exception p1

    .line 448
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_75
    return-object v0

    :cond_76
    const p2, 0x448c8000  # 1124.0f

    const/high16 v2, 0x44e10000  # 1800.0f

    cmpl-float v6, v3, p2

    if-gtz v6, :cond_8e

    int-to-float v6, v4

    cmpl-float v6, v6, v2

    if-lez v6, :cond_85

    goto :goto_8e

    .line 446
    :cond_85
    :try_start_85
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_8d

    :catch_89
    move-exception p1

    .line 448
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_8d
    return-object v0

    :cond_8e
    :goto_8e
    const/high16 v6, 0x3f800000  # 1.0f

    mul-float v6, v6, v3

    int-to-float v4, v4

    div-float/2addr v6, v4

    const v7, 0x3f1fdb97

    cmpl-float v6, v6, v7

    if-lez v6, :cond_a2

    div-float v2, p2, v3

    mul-float v4, v4, v2

    float-to-int v2, v4

    float-to-int p2, p2

    goto :goto_a8

    :cond_a2
    div-float p2, v2, v4

    mul-float v3, v3, p2

    float-to-int p2, v3

    float-to-int v2, v2

    :goto_a8
    :try_start_a8
    const-string v3, ".jpg"

    .line 421
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b3

    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_b5

    :cond_b3
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_b5
    invoke-static {p2, v2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 425
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 426
    new-instance v4, Landroid/graphics/RectF;

    int-to-float p2, p2

    int-to-float v2, v2

    const/4 v6, 0x0

    invoke-direct {v4, v6, v6, p2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 428
    invoke-virtual {v3, v0, v1, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 431
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_d2

    .line 432
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_d2} :catch_de
    .catchall {:try_start_a8 .. :try_end_d2} :catchall_db

    .line 446
    :cond_d2
    :try_start_d2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d5} :catch_d6

    goto :goto_da

    :catch_d6
    move-exception p2

    .line 448
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_da
    return-object p1

    :catchall_db
    move-exception p1

    move-object v1, v5

    goto :goto_100

    :catch_de
    move-exception p1

    move-object v2, v5

    goto :goto_f0

    .line 446
    :cond_e1
    :goto_e1
    :try_start_e1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_e5

    goto :goto_e9

    :catch_e5
    move-exception p1

    .line 448
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_e9
    return-object v1

    :catch_ea
    move-exception p1

    goto :goto_f0

    :catchall_ec
    move-exception p1

    goto :goto_100

    :catch_ee
    move-exception p1

    move-object v2, v1

    .line 442
    :goto_f0
    :try_start_f0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f3
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_fe

    if-eqz v2, :cond_10b

    .line 446
    :try_start_f5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_f8} :catch_f9

    goto :goto_10b

    :catch_f9
    move-exception p1

    .line 448
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10b

    :catchall_fe
    move-exception p1

    move-object v1, v2

    :goto_100
    if-eqz v1, :cond_10a

    .line 446
    :try_start_102
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_105} :catch_106

    goto :goto_10a

    :catch_106
    move-exception p2

    .line 448
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 450
    :cond_10a
    :goto_10a
    throw p1

    :cond_10b
    :goto_10b
    return-object v1
.end method

.method private initSize()V
    .registers 6

    .line 143
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object v0

    iget-boolean v0, v0, Lcn/codemao/android/sketch/CodemaoSketch;->isPad:Z

    if-eqz v0, :cond_af

    .line 144
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->iv_done:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x41700000  # 15.0f

    invoke-static {p0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 145
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->iv_done:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x42780000  # 62.0f

    invoke-static {p0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 146
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->iv_done:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x42100000  # 36.0f

    invoke-static {p0, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 147
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->iv_done:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x41200000  # 10.0f

    invoke-static {p0, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 148
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->iv_close:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v3, 0x42200000  # 40.0f

    invoke-static {p0, v3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 149
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->iv_close:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p0, v3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 150
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->tool_left:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v3, 0x42ce0000  # 103.0f

    invoke-static {p0, v3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 151
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->operate_menu:Lcn/codemao/android/sketch/view/menu/OperateMenu;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v3, 0x42800000  # 64.0f

    invoke-static {p0, v3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 152
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->mirrorMenu:Lcn/codemao/android/sketch/view/menu/MirrorMenu;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 153
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->colorMenu:Lcn/codemao/android/sketch/view/menu/ColorMenu;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x42a00000  # 80.0f

    invoke-static {p0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 154
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->iv_close:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x41900000  # 18.0f

    invoke-static {p0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_af
    return-void
.end method

.method private synthetic lambda$onCreate$0(Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenInfo;)V
    .registers 5

    const/4 v0, 0x0

    .line 121
    sput v0, Lcn/codemao/android/sketch/SketchActivity2;->NOTCHMARGIN:I

    .line 122
    iget-boolean v1, p1, Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenInfo;->hasNotch:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    iget-object v1, p1, Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    iput-boolean v1, p0, Lcn/codemao/android/sketch/SketchActivity2;->hasNotch:Z

    if-eqz v1, :cond_3b

    .line 124
    iget-object v1, p1, Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_28

    .line 125
    iget-object p1, p1, Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sput p1, Lcn/codemao/android/sketch/SketchActivity2;->NOTCHMARGIN:I

    goto :goto_2e

    .line 127
    :cond_28
    invoke-static {p0}, Lcn/codemao/android/sketch/utils/ScreenUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    sput p1, Lcn/codemao/android/sketch/SketchActivity2;->NOTCHMARGIN:I

    .line 129
    :goto_2e
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget v1, Lcn/codemao/android/sketch/SketchActivity2;->NOTCHMARGIN:I

    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 131
    :cond_3b
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity2;->delayInitView()V

    .line 132
    iput-boolean v2, p0, Lcn/codemao/android/sketch/SketchActivity2;->hasInit:Z

    return-void
.end method

.method private quite()V
    .registers 3

    const-string/jumbo v0, "取消"

    const/4 v1, 0x0

    .line 660
    invoke-virtual {p0, v0, v1}, Lcn/codemao/android/sketch/SketchActivity2;->sendReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 661
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->sv5:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/SketchViewV5;->hasModify()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 662
    new-instance v0, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcn/codemao/android/sketch/view/dialog/QuiteSketchDialog;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/view/dialog/QuiteSketchDialog;-><init>(Landroid/content/Context;)V

    .line 663
    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/xpopup/XPopup$Builder;->asCustom(Lcn/codemao/android/sketch/xpopup/core/BasePopupView;)Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    move-result-object v0

    .line 664
    invoke-virtual {v0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->show()Lcn/codemao/android/sketch/xpopup/core/BasePopupView;

    goto :goto_24

    .line 666
    :cond_21
    invoke-virtual {p0}, Lcn/codemao/android/sketch/SketchActivity2;->out()V

    :goto_24
    return-void
.end method

.method private saveAsFile()V
    .registers 8

    .line 512
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->fileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 513
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_enter_target_catalog:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/utils/ToastUtils;->showCenterShortToast(Ljava/lang/CharSequence;)V

    return-void

    .line 516
    :cond_14
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity2;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 518
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 520
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 522
    :cond_2d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 523
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 525
    :cond_36
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 528
    iget-object v2, p0, Lcn/codemao/android/sketch/SketchActivity2;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcn/codemao/android/sketch/utils/BitmapUtil;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v2

    const v3, 0x19000

    if-le v2, v3, :cond_48

    const/4 v2, 0x1

    goto :goto_49

    :cond_48
    const/4 v2, 0x0

    .line 529
    :goto_49
    iget-object v3, p0, Lcn/codemao/android/sketch/SketchActivity2;->fileName:Ljava/lang/String;

    const-string v4, ".webp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x50

    const/16 v5, 0x64

    if-nez v3, :cond_70

    iget-object v3, p0, Lcn/codemao/android/sketch/SketchActivity2;->fileName:Ljava/lang/String;

    const-string v6, ".png"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_62

    goto :goto_70

    .line 532
    :cond_62
    iget-object v3, p0, Lcn/codemao/android/sketch/SketchActivity2;->mCacheBitmap:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-eqz v2, :cond_69

    goto :goto_6b

    :cond_69
    const/16 v4, 0x64

    :goto_6b
    invoke-virtual {v3, v6, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    goto :goto_7d

    .line 530
    :cond_70
    :goto_70
    iget-object v3, p0, Lcn/codemao/android/sketch/SketchActivity2;->mCacheBitmap:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    if-eqz v2, :cond_77

    goto :goto_79

    :cond_77
    const/16 v4, 0x64

    :goto_79
    invoke-virtual {v3, v6, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    .line 535
    :goto_7d
    iget-object v3, p0, Lcn/codemao/android/sketch/SketchActivity2;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_8a

    .line 536
    iget-object v3, p0, Lcn/codemao/android/sketch/SketchActivity2;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8a
    if-nez v2, :cond_9c

    .line 540
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_failed_to_save_image:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/utils/ToastUtils;->showCenterShortToast(Ljava/lang/CharSequence;)V

    return-void

    .line 548
    :cond_9c
    :try_start_9c
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 549
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 551
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 552
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 555
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 556
    new-instance v1, Lcn/codemao/android/sketch/model/ResultInfo;

    invoke-direct {v1}, Lcn/codemao/android/sketch/model/ResultInfo;-><init>()V

    .line 557
    sget v2, Lcn/codemao/android/sketch/model/ResultInfo;->RESULT_CODE_SUCCESS:I

    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/model/ResultInfo;->setResultCode(I)V

    .line 558
    iget-object v2, p0, Lcn/codemao/android/sketch/SketchActivity2;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/model/ResultInfo;->setFilePath(Ljava/lang/String;)V

    .line 559
    iget-object v2, p0, Lcn/codemao/android/sketch/SketchActivity2;->roleName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 560
    sget v2, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_new_sprite:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/codemao/android/sketch/SketchActivity2;->roleName:Ljava/lang/String;

    .line 565
    :cond_da
    iget-object v2, p0, Lcn/codemao/android/sketch/SketchActivity2;->roleName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/model/ResultInfo;->setRoleName(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "savePath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/model/ResultInfo;->setFilePath(Ljava/lang/String;)V

    const-string v2, "resultInfo"

    .line 570
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 571
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 573
    invoke-virtual {p0}, Lcn/codemao/android/sketch/SketchActivity2;->out()V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_f8} :catch_f9

    goto :goto_10c

    :catch_f9
    move-exception v0

    .line 576
    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity2;->toastUtils:Lcn/codemao/android/sketch/utils/ToastUtils;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_failed_to_save_image:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/utils/ToastUtils;->showCenterShortToast(Ljava/lang/CharSequence;)V

    .line 577
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_10c
    return-void
.end method

.method private showCloseAndDone()V
    .registers 4

    .line 693
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->iv_close:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_18

    const/4 v0, 0x0

    .line 694
    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity2;->iv_close:Landroid/view/View;

    iget-object v2, p0, Lcn/codemao/android/sketch/SketchActivity2;->tool_left:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcn/codemao/android/sketch/utils/AnimationUtil;->animHorAndAlpha(ZLandroid/view/View;F)V

    .line 697
    :cond_18
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->iv_done:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity2;->colorMenu:Lcn/codemao/android/sketch/view/menu/ColorMenu;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/menu/ColorMenu;->getTranslationY()F

    move-result v1

    neg-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_34

    .line 698
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->iv_done:Landroid/view/View;

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity2;->colorMenu:Lcn/codemao/android/sketch/view/menu/ColorMenu;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/menu/ColorMenu;->getTranslationY()F

    move-result v1

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/AnimationUtil;->animVer(Landroid/view/View;F)V

    :cond_34
    return-void
.end method


# virtual methods
.method public changePaint(Lcn/codemao/android/sketch/view/paint/IPaint;)V
    .registers 3

    if-eqz p1, :cond_e

    .line 673
    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/paint/IPaint;->getMode()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_a

    goto :goto_11

    .line 684
    :cond_a
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity2;->hideCloseAndDone()V

    goto :goto_11

    .line 688
    :cond_e
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity2;->showCloseAndDone()V

    :goto_11
    return-void
.end method

.method protected checkMorePermission([Ljava/lang/String;)Z
    .registers 6

    .line 608
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 612
    :goto_a
    array-length v3, p1

    if-ge v2, v3, :cond_1a

    .line 613
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

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 161
    iget-boolean v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->hasInit:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->reject:Z

    if-nez v0, :cond_d

    .line 162
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public getRootview()Landroid/view/View;
    .registers 2

    .line 313
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->rootview:Landroid/view/View;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 754
    iget v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->type:I

    return v0
.end method

.method public getViewName()Ljava/lang/String;
    .registers 4

    .line 758
    sget v0, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_sprite_canvas_name:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 759
    iget v2, p0, Lcn/codemao/android/sketch/SketchActivity2;->type:I

    if-eqz v2, :cond_34

    const/4 v0, 0x1

    if-eq v2, v0, :cond_2d

    const/4 v0, 0x2

    if-eq v2, v0, :cond_26

    const/4 v0, 0x3

    if-eq v2, v0, :cond_14

    goto :goto_43

    .line 775
    :cond_14
    iget-boolean v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->isBackGroundEdit:Z

    if-eqz v0, :cond_1f

    .line 776
    sget v0, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_background_reedit_name:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_43

    .line 778
    :cond_1f
    sget v0, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_background_material_name:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_43

    .line 761
    :cond_26
    sget v0, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_background_canvas_name:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_43

    .line 772
    :cond_2d
    sget v0, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_sprite_material_name:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_43

    .line 765
    :cond_34
    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity2;->materialBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3f

    .line 766
    sget v0, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_sprite_reedit_name:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_43

    .line 768
    :cond_3f
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_43
    return-object v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 597
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x4d3

    if-ne p1, p3, :cond_21

    if-ne p2, p3, :cond_1a

    .line 600
    invoke-static {}, Lcn/codemao/android/sketch/utils/EditorBitmapCache;->getInstance()Lcn/codemao/android/sketch/utils/EditorBitmapCache;

    move-result-object p1

    const-string p2, "TRIMMED_BITMAP"

    invoke-virtual {p1, p2}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 601
    iget-object p2, p0, Lcn/codemao/android/sketch/SketchActivity2;->sv5:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {p2, p1}, Lcn/codemao/android/sketch/view/SketchViewV5;->refreshSrcBitmap(Landroid/graphics/Bitmap;)V

    .line 603
    :cond_1a
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity2;->sv5:Lcn/codemao/android/sketch/view/SketchViewV5;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcn/codemao/android/sketch/view/SketchViewV5;->setCutBitmapModel(ZLcn/codemao/android/sketch/model/CutoutBitmapInfo;)V

    :cond_21
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .line 646
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity2;->quite()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 628
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 631
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 632
    sget v0, Lcn/codemao/android/sketch/R$id;->tv_done:I

    if-ne p1, v0, :cond_28

    const/4 p1, 0x0

    const-string/jumbo v0, "保存"

    .line 633
    invoke-virtual {p0, v0, p1}, Lcn/codemao/android/sketch/SketchActivity2;->sendReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 634
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity2;->sv5:Lcn/codemao/android/sketch/view/SketchViewV5;

    iget-boolean v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->isBackGroundEdit:Z

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/view/SketchViewV5;->needCreateBitmap(Z)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 635
    invoke-virtual {p0}, Lcn/codemao/android/sketch/SketchActivity2;->saveBitmap()V

    goto :goto_2f

    .line 637
    :cond_24
    invoke-virtual {p0}, Lcn/codemao/android/sketch/SketchActivity2;->out()V

    goto :goto_2f

    .line 638
    :cond_28
    sget v0, Lcn/codemao/android/sketch/R$id;->iv_close:I

    if-ne p1, v0, :cond_2f

    .line 639
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity2;->quite()V

    :cond_2f
    :goto_2f
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "activity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->type:I

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isLandscapeStage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->isLandscapeStage:Z

    .line 107
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-static {p0}, Lcn/codemao/android/sketch/utils/UiUtil;->hideNavigationBar(Landroid/app/Activity;)V

    .line 110
    sget p1, Lcn/codemao/android/sketch/R$layout;->activity_sketch2:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 111
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity2;->findView()V

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x802

    .line 116
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 119
    sget p1, Lcn/codemao/android/sketch/SketchActivity2;->NOTCHMARGIN:I

    if-gtz p1, :cond_54

    .line 120
    invoke-static {}, Lcn/codemao/android/sketch/notchlib/NotchScreenManager;->getInstance()Lcn/codemao/android/sketch/notchlib/NotchScreenManager;

    move-result-object p1

    new-instance v0, Lcn/codemao/android/sketch/SketchActivity2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/SketchActivity2$$ExternalSyntheticLambda0;-><init>(Lcn/codemao/android/sketch/SketchActivity2;)V

    invoke-virtual {p1, p0, v0}, Lcn/codemao/android/sketch/notchlib/NotchScreenManager;->getNotchInfo(Landroid/app/Activity;Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenCallback;)V

    goto :goto_67

    .line 135
    :cond_54
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcn/codemao/android/sketch/SketchActivity2;->NOTCHMARGIN:I

    invoke-virtual {p1, v0, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 136
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity2;->delayInitView()V

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lcn/codemao/android/sketch/SketchActivity2;->hasInit:Z

    .line 139
    :goto_67
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity2;->initSize()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 655
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 656
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->sv5:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/SketchViewV5;->destroy()V

    return-void
.end method

.method public out()V
    .registers 1

    .line 650
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public saveBitmap()V
    .registers 4

    .line 471
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->fileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 474
    :cond_9
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->fileName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_38

    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->fileName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 475
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->permissions:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/codemao/android/sketch/SketchActivity2;->checkMorePermission([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 476
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->permissions:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 481
    :cond_38
    iget v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->type:I

    if-eqz v0, :cond_57

    if-eq v0, v1, :cond_57

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_45

    goto :goto_5f

    .line 483
    :cond_45
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->sv5:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getBitmapBackGround()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->mCacheBitmap:Landroid/graphics/Bitmap;

    goto :goto_5f

    .line 491
    :cond_4e
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->sv5:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getCanvasBackGround()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->mCacheBitmap:Landroid/graphics/Bitmap;

    goto :goto_5f

    .line 488
    :cond_57
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->sv5:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getCanvasActor()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->mCacheBitmap:Landroid/graphics/Bitmap;

    .line 495
    :goto_5f
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6d

    .line 496
    sget v0, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_look_required:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/codemao/android/sketch/SketchActivity2;->showToast(Ljava/lang/String;)V

    return-void

    .line 499
    :cond_6d
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity2;->saveAsFile()V

    return-void
.end method

.method public sendReport(Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 716
    iget v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->type:I

    if-eqz v0, :cond_52

    const/4 v1, 0x1

    if-eq v0, v1, :cond_45

    const/4 v1, 0x2

    if-eq v0, v1, :cond_38

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1a

    .line 745
    sget v0, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_sprite_canvas_des:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 746
    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_sprite_canvas_title:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6f

    .line 722
    :cond_1a
    iget-boolean v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->isBackGroundEdit:Z

    if-eqz v0, :cond_2b

    .line 723
    sget v0, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_background_reedit_des:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 724
    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_background_reedit_title:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6f

    .line 726
    :cond_2b
    sget v0, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_upload_background_material:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 727
    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_background_material_title:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6f

    .line 732
    :cond_38
    sget v0, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_background_canvas_des:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 733
    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_background_canvas_title:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6f

    .line 718
    :cond_45
    sget v0, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_upload_sprite_material:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 719
    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_sprite_material_title:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6f

    .line 736
    :cond_52
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2;->materialBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_63

    .line 737
    sget v0, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_sprite_reedit_des:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 738
    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_sprite_reedit_title:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6f

    .line 740
    :cond_63
    sget v0, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_sprite_canvas_des:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 741
    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_sprite_canvas_title:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 750
    :goto_6f
    invoke-static {}, Lcn/codemao/android/sketch/utils/ReportUtils;->getInstance()Lcn/codemao/android/sketch/utils/ReportUtils;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1, p2}, Lcn/codemao/android/sketch/utils/ReportUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 504
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 505
    sget v0, Lcn/codemao/android/sketch/SketchActivity2;->NOTCHMARGIN:I

    if-eqz v0, :cond_12

    const/16 v1, 0x50

    mul-int/lit8 v2, v0, 0x2

    .line 506
    div-int/lit8 v2, v2, 0x3

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 507
    :cond_12
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
