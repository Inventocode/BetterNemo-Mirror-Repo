.class public Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
.super Ljava/lang/Object;
.source "DisplayImageOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cacheInMemory:Z

.field private cacheOnDisk:Z

.field private considerExifParams:Z

.field private decodingOptions:Landroid/graphics/BitmapFactory$Options;

.field private delayBeforeLoading:I

.field private displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

.field private extraForDownloader:Ljava/lang/Object;

.field private handler:Landroid/os/Handler;

.field private imageForEmptyUri:Landroid/graphics/drawable/Drawable;

.field private imageOnFail:Landroid/graphics/drawable/Drawable;

.field private imageOnLoading:Landroid/graphics/drawable/Drawable;

.field private imageResForEmptyUri:I

.field private imageResOnFail:I

.field private imageResOnLoading:I

.field private imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field private isSyncLoading:Z

.field private postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

.field private preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

.field private resetViewBeforeLoading:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 203
    iput v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResOnLoading:I

    .line 204
    iput v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResForEmptyUri:I

    .line 205
    iput v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResOnFail:I

    const/4 v1, 0x0

    .line 206
    iput-object v1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    .line 207
    iput-object v1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    .line 208
    iput-object v1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageOnFail:Landroid/graphics/drawable/Drawable;

    .line 209
    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z

    .line 210
    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z

    .line 211
    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk:Z

    .line 212
    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 213
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    .line 214
    iput v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading:I

    .line 215
    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams:Z

    .line 216
    iput-object v1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->extraForDownloader:Ljava/lang/Object;

    .line 217
    iput-object v1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 218
    iput-object v1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 219
    invoke-static {}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createBitmapDisplayer()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    move-result-object v2

    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 220
    iput-object v1, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->handler:Landroid/os/Handler;

    .line 221
    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->isSyncLoading:Z

    return-void
.end method

.method static synthetic access$000(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I
    .registers 1

    .line 202
    iget p0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResOnLoading:I

    return p0
.end method

.method static synthetic access$100(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I
    .registers 1

    .line 202
    iget p0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResForEmptyUri:I

    return p0
.end method

.method static synthetic access$1000(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/BitmapFactory$Options;
    .registers 1

    .line 202
    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I
    .registers 1

    .line 202
    iget p0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading:I

    return p0
.end method

.method static synthetic access$1200(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
    .registers 1

    .line 202
    iget-boolean p0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Ljava/lang/Object;
    .registers 1

    .line 202
    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->extraForDownloader:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
    .registers 1

    .line 202
    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->preProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
    .registers 1

    .line 202
    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->postProcessor:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
    .registers 1

    .line 202
    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/os/Handler;
    .registers 1

    .line 202
    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
    .registers 1

    .line 202
    iget-boolean p0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->isSyncLoading:Z

    return p0
.end method

.method static synthetic access$200(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I
    .registers 1

    .line 202
    iget p0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageResOnFail:I

    return p0
.end method

.method static synthetic access$300(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 202
    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageOnLoading:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 202
    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageForEmptyUri:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 202
    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageOnFail:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
    .registers 1

    .line 202
    iget-boolean p0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading:Z

    return p0
.end method

.method static synthetic access$700(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
    .registers 1

    .line 202
    iget-boolean p0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory:Z

    return p0
.end method

.method static synthetic access$800(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
    .registers 1

    .line 202
    iget-boolean p0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk:Z

    return p0
.end method

.method static synthetic access$900(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .registers 1

    .line 202
    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .registers 3

    .line 484
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;-><init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;Lcom/nostra13/universalimageloader/core/DisplayImageOptions$1;)V

    return-object v0
.end method
