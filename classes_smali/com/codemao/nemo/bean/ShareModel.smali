.class public Lcom/codemao/nemo/bean/ShareModel;
.super Ljava/lang/Object;
.source "ShareModel.java"

# interfaces
.implements Lcn/codemao/android/share/interfaces/IshareInfo;
.implements Ljava/io/Serializable;


# static fields
.field public static final CONTENT_TYPE_CARD:I = 0x5

.field public static final CONTENT_TYPE_COMIC:I = 0x3

.field public static final CONTENT_TYPE_NOVEL:I = 0x4

.field public static final CONTENT_TYPE_WEB:I = 0x2

.field public static final CONTENT_TYPE_WORK:I = 0x1


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private contentType:I

.field private copyLink:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private descriptionMoment:Ljava/lang/String;

.field private imgUrl:Ljava/lang/String;

.field private imgUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private shareMedia:Lcn/codemao/android/share/bean/ShareMedia;

.field private title:Ljava/lang/String;

.field private titleWX:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/codemao/nemo/bean/ShareModel;->contentType:I

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/codemao/nemo/bean/ShareModel;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getContentType()I
    .registers 2

    .line 53
    iget v0, p0, Lcom/codemao/nemo/bean/ShareModel;->contentType:I

    return v0
.end method

.method public getCopyLink()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/codemao/nemo/bean/ShareModel;->copyLink:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/codemao/nemo/bean/ShareModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionMoment()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/codemao/nemo/bean/ShareModel;->descriptionMoment:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/codemao/nemo/bean/ShareModel;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrls()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/codemao/nemo/bean/ShareModel;->imgUrls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getShareImgURL()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/codemao/nemo/bean/ShareModel;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getShareLink()Ljava/lang/String;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/codemao/nemo/bean/ShareModel;->copyLink:Ljava/lang/String;

    return-object v0
.end method

.method public getShareMedia()Lcn/codemao/android/share/bean/ShareMedia;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/codemao/nemo/bean/ShareModel;->shareMedia:Lcn/codemao/android/share/bean/ShareMedia;

    return-object v0
.end method

.method public getShareText()Ljava/lang/String;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/codemao/nemo/bean/ShareModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getShareTitle()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/codemao/nemo/bean/ShareModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/codemao/nemo/bean/ShareModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleWX()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/codemao/nemo/bean/ShareModel;->titleWX:Ljava/lang/String;

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/codemao/nemo/bean/ShareModel;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setContentType(I)V
    .registers 2

    .line 57
    iput p1, p0, Lcom/codemao/nemo/bean/ShareModel;->contentType:I

    return-void
.end method

.method public setCopyLink(Ljava/lang/String;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/codemao/nemo/bean/ShareModel;->copyLink:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/codemao/nemo/bean/ShareModel;->description:Ljava/lang/String;

    return-void
.end method

.method public setDescriptionMoment(Ljava/lang/String;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/codemao/nemo/bean/ShareModel;->descriptionMoment:Ljava/lang/String;

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/codemao/nemo/bean/ShareModel;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setImgUrls(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/codemao/nemo/bean/ShareModel;->imgUrls:Ljava/util/ArrayList;

    return-void
.end method

.method public setShareMedia(Lcn/codemao/android/share/bean/ShareMedia;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/codemao/nemo/bean/ShareModel;->shareMedia:Lcn/codemao/android/share/bean/ShareMedia;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/codemao/nemo/bean/ShareModel;->title:Ljava/lang/String;

    return-void
.end method

.method public setTitleWX(Ljava/lang/String;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/codemao/nemo/bean/ShareModel;->titleWX:Ljava/lang/String;

    return-void
.end method
