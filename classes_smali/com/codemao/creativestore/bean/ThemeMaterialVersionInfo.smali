.class public Lcom/codemao/creativestore/bean/ThemeMaterialVersionInfo;
.super Ljava/lang/Object;
.source "ThemeMaterialVersionInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private material_version:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaterial_version()I
    .registers 2

    .line 12
    iget v0, p0, Lcom/codemao/creativestore/bean/ThemeMaterialVersionInfo;->material_version:I

    return v0
.end method

.method public setMaterial_version(I)V
    .registers 2

    .line 16
    iput p1, p0, Lcom/codemao/creativestore/bean/ThemeMaterialVersionInfo;->material_version:I

    return-void
.end method
