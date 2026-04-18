.class public Lcom/codemao/nemo/bean/RecomThemeBannerInfo;
.super Ljava/lang/Object;
.source "RecomThemeBannerInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private preview_url:Ljava/lang/String;

.field private subject_id:I

.field private subject_name:Ljava/lang/String;

.field private target_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreview_url()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecomThemeBannerInfo;->preview_url:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject_id()I
    .registers 2

    .line 20
    iget v0, p0, Lcom/codemao/nemo/bean/RecomThemeBannerInfo;->subject_id:I

    return v0
.end method

.method public getSubject_name()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecomThemeBannerInfo;->subject_name:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget_url()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecomThemeBannerInfo;->target_url:Ljava/lang/String;

    return-object v0
.end method
