.class public Lcom/sdk/s/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-class v0, Lcom/sdk/s/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sdk/s/a;->a:Ljava/lang/String;

    sget-boolean v0, Lcom/sdk/f/c;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sdk/s/a;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "aesKey"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/sdk/t/a;->b:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sdk/p/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/sdk/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_27

    return-object p0

    :catchall_27
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_2c
    sget-object v1, Lcom/sdk/n/c;->a:Lcom/sdk/f/a;

    iget-object v1, v1, Lcom/sdk/f/a;->b:Lcom/sdk/f/a$a;

    iget-object v1, v1, Lcom/sdk/f/a$a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sdk/n/c;->a:Lcom/sdk/f/a;

    iget-object v0, v0, Lcom/sdk/f/a;->b:Lcom/sdk/f/a$a;

    iput-object v1, v0, Lcom/sdk/f/a$a;->b:Ljava/util/List;
    :try_end_3b
    .catchall {:try_start_2c .. :try_end_3b} :catchall_3b

    :catchall_3b
    sget-object v0, Lcom/sdk/s/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK解密异常："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/sdk/s/a;->b:Ljava/lang/Boolean;

    invoke-static {v0, p0, v1}, Lcom/sdk/n/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    const/4 p0, 0x0

    return-object p0
.end method
