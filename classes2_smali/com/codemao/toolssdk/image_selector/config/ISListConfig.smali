.class public Lcom/codemao/toolssdk/image_selector/config/ISListConfig;
.super Ljava/lang/Object;
.source "ISListConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;,
        Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;
    }
.end annotation


# instance fields
.field public allImagesText:Ljava/lang/String;

.field public aspectX:I

.field public aspectY:I

.field public backResId:I

.field public btnBgColor:I

.field public btnText:Ljava/lang/String;

.field public btnTextColor:I

.field public filePath:Ljava/lang/String;

.field public isDark:Z

.field public isLandscape:Z

.field public maxNum:I

.field public multiSelect:Z

.field public needCamera:Z

.field public needCrop:Z

.field public outputX:I

.field public outputY:I

.field public previewType:Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

.field public rememberSelected:Z

.field public statusBarColor:I

.field public title:Ljava/lang/String;

.field public titleBgColor:I

.field public titleColor:I


# direct methods
.method public constructor <init>(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)V
    .registers 5

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->multiSelect:Z

    const/4 v1, 0x1

    .line 29
    iput-boolean v1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->rememberSelected:Z

    const/16 v2, 0x9

    .line 34
    iput v2, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->maxNum:I

    .line 41
    iput-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->isLandscape:Z

    const/4 v2, -0x1

    .line 43
    iput v2, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->statusBarColor:I

    .line 48
    iput-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->isDark:Z

    .line 53
    iput v2, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->backResId:I

    .line 92
    iput v1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->aspectX:I

    .line 93
    iput v1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->aspectY:I

    const/16 v0, 0x1f4

    .line 94
    iput v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->outputX:I

    .line 95
    iput v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->outputY:I

    .line 103
    sget-object v0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;->None:Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->previewType:Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

    .line 106
    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->access$000(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->needCrop:Z

    .line 107
    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->access$100(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->multiSelect:Z

    .line 108
    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->access$200(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->rememberSelected:Z

    .line 109
    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->access$300(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->maxNum:I

    .line 110
    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->access$400(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->needCamera:Z

    .line 111
    iget v0, p1, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->statusBarColor:I

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->statusBarColor:I

    .line 112
    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->access$500(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->isDark:Z

    .line 113
    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->access$600(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->backResId:I

    .line 114
    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->access$700(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->title:Ljava/lang/String;

    .line 115
    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->access$800(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->titleBgColor:I

    .line 116
    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->access$900(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->titleColor:I

    .line 117
    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->access$1000(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->btnText:Ljava/lang/String;

    .line 118
    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->access$1100(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->btnBgColor:I

    .line 119
    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->access$1200(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->btnTextColor:I

    .line 120
    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->access$1300(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->allImagesText:Ljava/lang/String;

    .line 121
    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->access$1400(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->filePath:Ljava/lang/String;

    .line 122
    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->access$1500(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->aspectX:I

    .line 123
    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->access$1600(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->aspectY:I

    .line 124
    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->access$1700(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->outputX:I

    .line 125
    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->access$1800(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->outputY:I

    .line 126
    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->access$1900(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->previewType:Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

    .line 127
    invoke-static {p1}, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;->access$2000(Lcom/codemao/toolssdk/image_selector/config/ISListConfig$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/toolssdk/image_selector/config/ISListConfig;->isLandscape:Z

    return-void
.end method
