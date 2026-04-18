.class public Lcom/codemao/creativestore/bean/BaseMaterialInfo;
.super Ljava/lang/Object;
.source "BaseMaterialInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private base_material_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBase_material_url()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/codemao/creativestore/bean/BaseMaterialInfo;->base_material_url:Ljava/lang/String;

    return-object v0
.end method

.method public setBase_material_url(Ljava/lang/String;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/codemao/creativestore/bean/BaseMaterialInfo;->base_material_url:Ljava/lang/String;

    return-void
.end method
