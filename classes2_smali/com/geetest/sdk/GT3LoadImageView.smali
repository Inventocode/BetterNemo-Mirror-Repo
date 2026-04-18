.class public Lcom/geetest/sdk/GT3LoadImageView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/geetest/sdk/NoProguard;


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x2

    .line 2
    iput p1, p0, Lcom/geetest/sdk/GT3LoadImageView;->b:I

    .line 3
    iput p1, p0, Lcom/geetest/sdk/GT3LoadImageView;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x2

    .line 5
    iput p1, p0, Lcom/geetest/sdk/GT3LoadImageView;->b:I

    .line 6
    iput p1, p0, Lcom/geetest/sdk/GT3LoadImageView;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x2

    .line 8
    iput p1, p0, Lcom/geetest/sdk/GT3LoadImageView;->b:I

    .line 9
    iput p1, p0, Lcom/geetest/sdk/GT3LoadImageView;->c:I

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 1

    return-void
.end method

.method public getIconRes()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/geetest/sdk/GT3LoadImageView;->a:I

    return v0
.end method

.method public getLoadViewHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/geetest/sdk/GT3LoadImageView;->c:I

    return v0
.end method

.method public getLoadViewWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/geetest/sdk/GT3LoadImageView;->b:I

    return v0
.end method

.method public isGif()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public setIconRes(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/geetest/sdk/GT3LoadImageView;->a:I

    return-void
.end method

.method public setLoadViewHeight(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/geetest/sdk/GT3LoadImageView;->c:I

    return-void
.end method

.method public setLoadViewWidth(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/geetest/sdk/GT3LoadImageView;->b:I

    return-void
.end method
