.class public Lcom/geetest/sdk/model/beans/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I = 0x6

.field private static b:I = 0xf

.field private static c:I = 0xc

.field private static d:I = 0x2

.field private static e:I = 0xc

.field private static f:I = 0x8

.field private static g:I = 0xc

.field private static h:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 1
    sget v0, Lcom/geetest/sdk/model/beans/d;->c:I

    return v0
.end method

.method public b()I
    .registers 2

    .line 1
    sget v0, Lcom/geetest/sdk/model/beans/d;->g:I

    return v0
.end method

.method public c()I
    .registers 2

    .line 1
    sget v0, Lcom/geetest/sdk/model/beans/d;->b:I

    return v0
.end method

.method public d()I
    .registers 2

    .line 1
    sget v0, Lcom/geetest/sdk/model/beans/d;->h:I

    return v0
.end method

.method public e()I
    .registers 2

    .line 1
    sget v0, Lcom/geetest/sdk/model/beans/d;->f:I

    return v0
.end method

.method public f()I
    .registers 2

    .line 1
    sget v0, Lcom/geetest/sdk/model/beans/d;->a:I

    return v0
.end method

.method public g()I
    .registers 2

    .line 1
    sget v0, Lcom/geetest/sdk/model/beans/d;->e:I

    return v0
.end method

.method public h()I
    .registers 2

    .line 1
    sget v0, Lcom/geetest/sdk/model/beans/d;->d:I

    return v0
.end method
