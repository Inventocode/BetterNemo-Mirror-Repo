.class public Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;
.super Ljava/lang/Object;
.source "ISListConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/image_selector/config/ISListConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private allImagesText:Ljava/lang/String;

.field private aspectX:I

.field private aspectY:I

.field private backResId:I

.field private btnBgColor:I

.field private btnText:Ljava/lang/String;

.field private btnTextColor:I

.field private filePath:Ljava/lang/String;

.field private isDark:Z

.field private isLandscape:Z

.field private maxNum:I

.field private multiSelect:Z

.field private needCamera:Z

.field private needCrop:Z

.field private outputX:I

.field private outputY:I

.field private previewType:Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

.field private rememberSelected:Z

.field public statusBarColor:I

.field private title:Ljava/lang/String;

.field private titleBgColor:I

.field private titleColor:I


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->needCrop:Z

    const/4 v1, 0x1

    .line 133
    iput-boolean v1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->multiSelect:Z

    .line 134
    iput-boolean v1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->rememberSelected:Z

    const/16 v2, 0x9

    .line 135
    iput v2, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->maxNum:I

    .line 136
    iput-boolean v1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->needCamera:Z

    .line 137
    iput-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->isLandscape:Z

    const/4 v2, -0x1

    .line 138
    iput v2, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->statusBarColor:I

    .line 139
    iput-boolean v1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->isDark:Z

    .line 140
    iput v2, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->backResId:I

    .line 150
    iput v1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->aspectX:I

    .line 151
    iput v1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->aspectY:I

    const/16 v1, 0x190

    .line 152
    iput v1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->outputX:I

    .line 153
    iput v1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->outputY:I

    .line 155
    sget-object v1, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;->None:Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

    iput-object v1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->previewType:Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

    .line 159
    invoke-static {}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->isSdCardAvailable()Z

    move-result v1

    const-string v3, "/Camera"

    if-eqz v1, :cond_4a

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->filePath:Ljava/lang/String;

    goto :goto_63

    .line 161
    :cond_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->filePath:Ljava/lang/String;

    :goto_63
    const-string v1, "照片"

    .line 163
    iput-object v1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->title:Ljava/lang/String;

    const-string v1, "#3F51B5"

    .line 164
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->titleBgColor:I

    .line 165
    iput v2, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->titleColor:I

    const-string v1, "确定"

    .line 167
    iput-object v1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->btnText:Ljava/lang/String;

    .line 168
    iput v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->btnBgColor:I

    .line 169
    iput v2, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->btnTextColor:I

    const-string v0, "所有图片"

    .line 171
    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->allImagesText:Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->createDir(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)Z
    .registers 1

    .line 130
    iget-boolean p0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->needCrop:Z

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)Z
    .registers 1

    .line 130
    iget-boolean p0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->multiSelect:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)Ljava/lang/String;
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->btnText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)I
    .registers 1

    .line 130
    iget p0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->btnBgColor:I

    return p0
.end method

.method static synthetic access$1200(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)I
    .registers 1

    .line 130
    iget p0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->btnTextColor:I

    return p0
.end method

.method static synthetic access$1300(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)Ljava/lang/String;
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->allImagesText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)Ljava/lang/String;
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)I
    .registers 1

    .line 130
    iget p0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->aspectX:I

    return p0
.end method

.method static synthetic access$1600(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)I
    .registers 1

    .line 130
    iget p0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->aspectY:I

    return p0
.end method

.method static synthetic access$1700(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)I
    .registers 1

    .line 130
    iget p0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->outputX:I

    return p0
.end method

.method static synthetic access$1800(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)I
    .registers 1

    .line 130
    iget p0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->outputY:I

    return p0
.end method

.method static synthetic access$1900(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->previewType:Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)Z
    .registers 1

    .line 130
    iget-boolean p0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->rememberSelected:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)Z
    .registers 1

    .line 130
    iget-boolean p0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->isLandscape:Z

    return p0
.end method

.method static synthetic access$300(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)I
    .registers 1

    .line 130
    iget p0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->maxNum:I

    return p0
.end method

.method static synthetic access$400(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)Z
    .registers 1

    .line 130
    iget-boolean p0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->needCamera:Z

    return p0
.end method

.method static synthetic access$500(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)Z
    .registers 1

    .line 130
    iget-boolean p0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->isDark:Z

    return p0
.end method

.method static synthetic access$600(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)I
    .registers 1

    .line 130
    iget p0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->backResId:I

    return p0
.end method

.method static synthetic access$700(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)Ljava/lang/String;
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)I
    .registers 1

    .line 130
    iget p0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->titleBgColor:I

    return p0
.end method

.method static synthetic access$900(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)I
    .registers 1

    .line 130
    iget p0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->titleColor:I

    return p0
.end method


# virtual methods
.method public allImagesText(Ljava/lang/String;)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;
    .registers 2

    .line 252
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->allImagesText:Ljava/lang/String;

    return-object p0
.end method

.method public backResId(I)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;
    .registers 2

    .line 217
    iput p1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->backResId:I

    return-object p0
.end method

.method public btnText(Ljava/lang/String;)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;
    .registers 2

    .line 237
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->btnText:Ljava/lang/String;

    return-object p0
.end method

.method public btnTextColor(I)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;
    .registers 2

    .line 242
    iput p1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->btnTextColor:I

    return-object p0
.end method

.method public build()Lcom/codemao/toolssdk/image_selector/config/ISListConfig;
    .registers 2

    .line 275
    new-instance v0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;-><init>(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)V

    return-object v0
.end method

.method public isDarkStatusStyle(Z)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;
    .registers 2

    .line 212
    iput-boolean p1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->isDark:Z

    return-object p0
.end method

.method public landscape(Z)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;
    .registers 2

    .line 202
    iput-boolean p1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->isLandscape:Z

    return-object p0
.end method

.method public maxNum(I)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;
    .registers 2

    .line 192
    iput p1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->maxNum:I

    return-object p0
.end method

.method public multiSelect(Z)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;
    .registers 2

    .line 182
    iput-boolean p1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->multiSelect:Z

    return-object p0
.end method

.method public needCamera(Z)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;
    .registers 2

    .line 197
    iput-boolean p1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->needCamera:Z

    return-object p0
.end method

.method public needCrop(Z)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;
    .registers 2

    .line 177
    iput-boolean p1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->needCrop:Z

    return-object p0
.end method

.method public setPreviewType(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;
    .registers 2

    .line 262
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->previewType:Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

    return-object p0
.end method

.method public statusBarColor(I)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;
    .registers 2

    .line 207
    iput p1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->statusBarColor:I

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;
    .registers 2

    .line 222
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public titleBgColor(I)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;
    .registers 2

    .line 232
    iput p1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->titleBgColor:I

    return-object p0
.end method

.method public titleColor(I)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;
    .registers 2

    .line 227
    iput p1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->titleColor:I

    return-object p0
.end method
