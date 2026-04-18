.class public Lcom/cmic/sso/sdk/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "中国移动认证服务条款"

    const-string v1, "中国电信天翼账号服务条款"

    const-string v2, "中国联通认证服务协议"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmic/sso/sdk/c;->a:[Ljava/lang/String;

    const-string v0, "中國移動認證服務條款"

    const-string v1, "中國電信天翼賬號服務條款"

    const-string v2, "中國聯通認證服務協議"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmic/sso/sdk/c;->b:[Ljava/lang/String;

    const-string v0, "China Mobile Authentication Service Term"

    const-string v1, "China Telecom Esurfing Account Service Terms"

    const-string v2, "China Unicom Certification Service Agreement"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmic/sso/sdk/c;->c:[Ljava/lang/String;

    const-string/jumbo v0, "服务条款"

    const-string/jumbo v1, "服務條款"

    const-string v2, "Service Term"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmic/sso/sdk/c;->d:[Ljava/lang/String;

    return-void
.end method
