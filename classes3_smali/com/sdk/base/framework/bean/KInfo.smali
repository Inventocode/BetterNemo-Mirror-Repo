.class public Lcom/sdk/base/framework/bean/KInfo;
.super Ljava/lang/Object;


# instance fields
.field private idfd:Z

.field private ie:Ljava/lang/String;

.field private is:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIe()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdk/base/framework/bean/KInfo;->ie:Ljava/lang/String;

    return-object v0
.end method

.method public getIs()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdk/base/framework/bean/KInfo;->is:Ljava/lang/String;

    return-object v0
.end method

.method public getM()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdk/base/framework/bean/KInfo;->m:Ljava/lang/String;

    return-object v0
.end method

.method public isIdfd()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdk/base/framework/bean/KInfo;->idfd:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/sdk/k/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
