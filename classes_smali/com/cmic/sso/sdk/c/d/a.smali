.class public Lcom/cmic/sso/sdk/c/d/a;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/cmic/sso/sdk/c/d/a;->a:I

    iput-object p2, p0, Lcom/cmic/sso/sdk/c/d/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lcom/cmic/sso/sdk/c/d/a;
    .registers 3

    const-string/jumbo v0, "网络异常"

    sparse-switch p0, :sswitch_data_50

    new-instance v1, Lcom/cmic/sso/sdk/c/d/a;

    invoke-direct {v1, p0, v0}, Lcom/cmic/sso/sdk/c/d/a;-><init>(ILjava/lang/String;)V

    return-object v1

    :sswitch_c
    new-instance p0, Lcom/cmic/sso/sdk/c/d/a;

    const v0, 0x30d72

    const-string v1, "EOF异常"

    invoke-direct {p0, v0, v1}, Lcom/cmic/sso/sdk/c/d/a;-><init>(ILjava/lang/String;)V

    return-object p0

    :sswitch_17
    new-instance p0, Lcom/cmic/sso/sdk/c/d/a;

    const v0, 0x30d67

    const-string/jumbo v1, "电信取号接口失败"

    invoke-direct {p0, v0, v1}, Lcom/cmic/sso/sdk/c/d/a;-><init>(ILjava/lang/String;)V

    return-object p0

    :sswitch_23
    new-instance p0, Lcom/cmic/sso/sdk/c/d/a;

    const v0, 0x30d59

    const-string/jumbo v1, "登录超时"

    invoke-direct {p0, v0, v1}, Lcom/cmic/sso/sdk/c/d/a;-><init>(ILjava/lang/String;)V

    return-object p0

    :sswitch_2f
    new-instance p0, Lcom/cmic/sso/sdk/c/d/a;

    const v0, 0x1906c

    const-string/jumbo v1, "数据网络切换失败"

    invoke-direct {p0, v0, v1}, Lcom/cmic/sso/sdk/c/d/a;-><init>(ILjava/lang/String;)V

    return-object p0

    :sswitch_3b
    new-instance p0, Lcom/cmic/sso/sdk/c/d/a;

    const v0, 0x18f4f

    const-string/jumbo v1, "数据解析异常"

    invoke-direct {p0, v0, v1}, Lcom/cmic/sso/sdk/c/d/a;-><init>(ILjava/lang/String;)V

    return-object p0

    :sswitch_47
    new-instance p0, Lcom/cmic/sso/sdk/c/d/a;

    const v1, 0x18ed6

    invoke-direct {p0, v1, v0}, Lcom/cmic/sso/sdk/c/d/a;-><init>(ILjava/lang/String;)V

    return-object p0

    :sswitch_data_50
    .sparse-switch
        0x18ed6 -> :sswitch_47
        0x18f4f -> :sswitch_3b
        0x1906c -> :sswitch_2f
        0x30d59 -> :sswitch_23
        0x30d67 -> :sswitch_17
        0x30d72 -> :sswitch_c
    .end sparse-switch
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/c/d/a;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/c/d/a;->b:Ljava/lang/String;

    return-object v0
.end method
