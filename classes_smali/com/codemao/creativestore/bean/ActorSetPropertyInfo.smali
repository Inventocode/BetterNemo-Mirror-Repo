.class public Lcom/codemao/creativestore/bean/ActorSetPropertyInfo;
.super Ljava/lang/Object;
.source "ActorSetPropertyInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private actor_id:Ljava/lang/String;

.field private property_name:Ljava/lang/String;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorSetPropertyInfo;->property_name:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/codemao/creativestore/bean/ActorSetPropertyInfo;->value:Ljava/lang/Object;

    .line 15
    iput-object p3, p0, Lcom/codemao/creativestore/bean/ActorSetPropertyInfo;->actor_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActor_id()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ActorSetPropertyInfo;->actor_id:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty_name()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ActorSetPropertyInfo;->property_name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ActorSetPropertyInfo;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setActor_id(Ljava/lang/String;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorSetPropertyInfo;->actor_id:Ljava/lang/String;

    return-void
.end method

.method public setProperty_name(Ljava/lang/String;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorSetPropertyInfo;->property_name:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorSetPropertyInfo;->value:Ljava/lang/Object;

    return-void
.end method
