.class public Lcom/sdk/g/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final i:Ljava/lang/String; = "com.sdk.g.b"

.field public static final j:Z


# instance fields
.field public a:Lcom/sdk/base/framework/bean/PInfo;

.field public b:Lcom/sdk/base/framework/bean/AInfo;

.field public c:Lcom/sdk/base/framework/bean/SInfo;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sdk/base/framework/bean/KInfo;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/sdk/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/e/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public f:Landroid/content/Context;

.field public g:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/sdk/f/c;->b:Z

    sput-boolean v0, Lcom/sdk/g/b;->j:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sdk/e/a;Lcom/sdk/f/b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sdk/e/a<",
            "TT;>;",
            "Lcom/sdk/f/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sdk/g/b;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/sdk/g/b;->e:Lcom/sdk/e/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/sdk/base/framework/bean/DataInfo;Lcom/sdk/e/b;ILcom/sdk/a/d$b;)Lcom/sdk/a/c;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sdk/base/framework/bean/DataInfo;",
            "Lcom/sdk/e/b<",
            "TT;>;I",
            "Lcom/sdk/a/d$b;",
            ")",
            "Lcom/sdk/a/c<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "sign"

    invoke-static/range {p1 .. p1}, Lcom/sdk/n/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1b

    const v0, 0x18a90

    const-string v2, "未检测到域名"

    invoke-virtual {v1, v5, v0, v2}, Lcom/sdk/g/b;->a(IILjava/lang/String;)V

    return-object v4

    :cond_1b
    :try_start_1b
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    const/16 v6, 0x10

    invoke-static {v6}, Lcom/sdk/q/a;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Lcom/sdk/q/a;->a(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/sdk/g/b;->f:Landroid/content/Context;

    sget-object v10, Lcom/sdk/base/module/config/BaseConfig;->apk:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/sdk/base/framework/utils/app/AppUtils;->getApiKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/sdk/t/a;->b:Ljava/lang/String;

    const-string v11, "/st/api/v1.0/ses"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3a} :catch_17b

    if-eqz v11, :cond_3e

    const-string v10, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCgdQaZgBcrXGxxD6F1TVVXAzvbB3xpoyk2AFMNj4vOcDWZoH1b3Mx5aVcEd0BZPZR6Icb8yi8ecMUVChGCRe20O8EQWLh1aCwR8JazNL+koD3Tn6TIwVwjVEQWy9w6DeXxMtQuFBL/jAChJcU7aDwMsSD1jYpdET37aB4p8Lvn2QIDAQAB"

    :cond_3e
    const/4 v11, 0x2

    :try_start_3f
    new-array v12, v11, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    aput-object v10, v12, v5

    const/4 v14, 0x0

    :goto_47
    if-ge v14, v11, :cond_63

    aget-object v15, v12, v14

    if-eqz v15, :cond_53

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v11, v5, :cond_5f

    :cond_53
    invoke-static {v15}, Lcom/sdk/n/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_5f

    const/4 v11, 0x1

    goto :goto_64

    :cond_5f
    add-int/lit8 v14, v14, 0x1

    const/4 v11, 0x2

    goto :goto_47

    :cond_63
    const/4 v11, 0x0

    :goto_64
    if-eqz v11, :cond_70

    const v0, 0x18a8c

    const-string v2, "ApiKey或PublicKey不能为空"

    invoke-virtual {v1, v5, v0, v2}, Lcom/sdk/g/b;->a(IILjava/lang/String;)V

    goto/16 :goto_19a

    :cond_70
    move-object/from16 v11, p3

    invoke-virtual {v1, v11, v7, v8}, Lcom/sdk/g/b;->a(Lcom/sdk/base/framework/bean/DataInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_76} :catch_17b

    :try_start_76
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sdk/p/b;->a:I

    invoke-static {v10}, Lcom/sdk/p/a;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v8

    const-string v10, "RSA/ECB/PKCS1Padding"

    invoke-static {v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v10

    invoke-virtual {v10, v5, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v10, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    invoke-static {v7}, Lcom/sdk/q/c;->a([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_a8} :catch_155

    :try_start_a8
    const-string v8, "apiKey"

    invoke-virtual {v3, v8, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "params"

    invoke-virtual {v3, v8, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "paramsKey"

    invoke-virtual {v3, v8, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9, v0, v3}, Lcom/sdk/r/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v6}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v7}, Lcom/sdk/n/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_de

    invoke-virtual {v3, v2, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "sign_Type"

    const-string v9, "B"

    invoke-virtual {v3, v6, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "api-protocol"

    const-string v6, "1.1"

    invoke-virtual {v8, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_de
    new-instance v2, Lcom/sdk/a/e;

    invoke-direct {v2}, Lcom/sdk/a/e;-><init>()V

    move-object/from16 v6, p6

    iget-object v6, v6, Lcom/sdk/a/d$b;->a:Ljava/lang/String;

    invoke-static {v6}, Lcom/sdk/n/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_f3

    iput-object v6, v2, Lcom/sdk/a/e;->a:Ljava/lang/String;

    :cond_f3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/sdk/a/e;->b:Ljava/lang/String;

    move-object/from16 v6, p4

    iput-object v6, v2, Lcom/sdk/a/e;->g:Lcom/sdk/e/b;

    move/from16 v6, p5

    iput v6, v2, Lcom/sdk/a/e;->f:I

    iput-object v3, v2, Lcom/sdk/a/e;->c:Ljava/util/TreeMap;

    iput-object v4, v2, Lcom/sdk/a/e;->d:Ljava/util/ArrayList;

    iput-object v8, v2, Lcom/sdk/a/e;->e:Ljava/util/HashMap;

    const-string v3, "/dro/netm/v1.0/qc"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11d

    goto :goto_122

    :cond_11d
    const-string v3, "/dro/ctc/v1.0/gctcbs"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_122
    new-instance v0, Lcom/sdk/a/d;

    iget-object v3, v1, Lcom/sdk/g/b;->f:Landroid/content/Context;

    invoke-direct {v0, v3, v2}, Lcom/sdk/a/d;-><init>(Landroid/content/Context;Lcom/sdk/a/e;)V

    new-instance v2, Lcom/sdk/a/c;

    invoke-direct {v2, v0}, Lcom/sdk/a/c;-><init>(Lcom/sdk/a/d;)V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_12e} :catch_17b

    :try_start_12e
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v13

    sget-object v0, Lcom/sdk/d/c;->h:Ljava/util/concurrent/Executor;

    iget-boolean v6, v2, Lcom/sdk/d/c;->e:Z

    if-nez v6, :cond_14a

    iput-boolean v5, v2, Lcom/sdk/d/c;->e:Z

    iget-object v6, v2, Lcom/sdk/d/c;->a:Lcom/sdk/d/c$e;

    iput-object v3, v6, Lcom/sdk/d/c$e;->a:[Ljava/lang/Object;

    new-instance v3, Lcom/sdk/d/g;

    iget-object v6, v2, Lcom/sdk/d/c;->b:Ljava/util/concurrent/FutureTask;

    invoke-direct {v3, v4, v6}, Lcom/sdk/d/g;-><init>(Lcom/sdk/d/b;Ljava/lang/Runnable;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    move-object v4, v2

    goto :goto_19a

    :cond_14a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot execute task: the task is already executed."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_152} :catch_152

    :catch_152
    move-exception v0

    move-object v4, v2

    goto :goto_17c

    :catch_155
    move-exception v0

    const v2, 0x18a8e

    :try_start_159
    const-string v3, "公钥出错"

    invoke-virtual {v1, v5, v2, v3}, Lcom/sdk/g/b;->a(IILjava/lang/String;)V

    sget-object v2, Lcom/sdk/g/b;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "公钥出错："

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v3, Lcom/sdk/g/b;->j:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/sdk/n/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_17a} :catch_17b

    goto :goto_19a

    :catch_17b
    move-exception v0

    :goto_17c
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sdk/n/c;->b(Ljava/lang/String;)V

    const v2, 0x49bb2

    const-string v3, "网络访问异常"

    invoke-virtual {v1, v5, v2, v3}, Lcom/sdk/g/b;->a(IILjava/lang/String;)V

    sget-object v2, Lcom/sdk/g/b;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v3, Lcom/sdk/g/b;->j:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/sdk/n/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :goto_19a
    return-object v4
.end method

.method public final a(Lcom/sdk/base/framework/bean/DataInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const-string v0, "utf-8"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/sdk/g/b;->b:Lcom/sdk/base/framework/bean/AInfo;

    if-nez v2, :cond_33

    iget-object v2, p0, Lcom/sdk/g/b;->f:Landroid/content/Context;

    new-instance v3, Lcom/sdk/base/framework/bean/AInfo;

    invoke-direct {v3}, Lcom/sdk/base/framework/bean/AInfo;-><init>()V

    invoke-static {v2}, Lcom/sdk/base/framework/utils/app/AppUtils;->getAppLable(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sdk/base/framework/bean/AInfo;->setN(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/sdk/base/framework/utils/app/AppUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sdk/base/framework/bean/AInfo;->setC(I)V

    invoke-static {v2}, Lcom/sdk/base/framework/utils/app/AppUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sdk/base/framework/bean/AInfo;->setV(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/sdk/base/framework/utils/app/AppUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sdk/base/framework/bean/AInfo;->setPk(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/sdk/base/framework/utils/app/AppUtils;->getAppMd5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sdk/base/framework/bean/AInfo;->setMd5(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sdk/g/b;->b:Lcom/sdk/base/framework/bean/AInfo;

    :cond_33
    iget-object v2, p0, Lcom/sdk/g/b;->c:Lcom/sdk/base/framework/bean/SInfo;

    if-nez v2, :cond_52

    new-instance v2, Lcom/sdk/base/framework/bean/SInfo;

    invoke-direct {v2}, Lcom/sdk/base/framework/bean/SInfo;-><init>()V

    sget-object v3, Lcom/sdk/base/module/config/BaseConfig;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sdk/base/framework/bean/SInfo;->setN(Ljava/lang/String;)V

    sget v3, Lcom/sdk/base/module/config/BaseConfig;->c:I

    invoke-virtual {v2, v3}, Lcom/sdk/base/framework/bean/SInfo;->setC(I)V

    sget-object v3, Lcom/sdk/base/module/config/BaseConfig;->v:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sdk/base/framework/bean/SInfo;->setV(Ljava/lang/String;)V

    sget-object v3, Lcom/sdk/base/module/config/BaseConfig;->cm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sdk/base/framework/bean/SInfo;->setCm(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sdk/g/b;->c:Lcom/sdk/base/framework/bean/SInfo;

    :cond_52
    iget-object v2, p0, Lcom/sdk/g/b;->d:Ljava/util/ArrayList;

    if-nez v2, :cond_5d

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sdk/g/b;->d:Ljava/util/ArrayList;

    :cond_5d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/sdk/g/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_68
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_99

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sdk/base/framework/bean/KInfo;

    new-instance v5, Lcom/sdk/base/framework/bean/MobileKInfo;

    invoke-direct {v5}, Lcom/sdk/base/framework/bean/MobileKInfo;-><init>()V

    invoke-virtual {v4}, Lcom/sdk/base/framework/bean/KInfo;->getIe()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sdk/base/framework/bean/MobileKInfo;->setIe(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/sdk/base/framework/bean/KInfo;->getIs()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sdk/base/framework/bean/MobileKInfo;->setIs(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/sdk/base/framework/bean/KInfo;->getM()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sdk/base/framework/bean/MobileKInfo;->setM(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/sdk/base/framework/bean/KInfo;->isIdfd()Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/sdk/base/framework/bean/MobileKInfo;->setIdfd(Z)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :cond_99
    iget-object v3, p0, Lcom/sdk/g/b;->a:Lcom/sdk/base/framework/bean/PInfo;

    if-nez v3, :cond_a9

    new-instance v3, Lcom/sdk/base/framework/bean/PInfo;

    invoke-direct {v3}, Lcom/sdk/base/framework/bean/PInfo;-><init>()V

    const-string v4, "Android"

    invoke-virtual {v3, v4}, Lcom/sdk/base/framework/bean/PInfo;->setOs(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sdk/g/b;->a:Lcom/sdk/base/framework/bean/PInfo;

    :cond_a9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{app:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sdk/g/b;->b:Lcom/sdk/base/framework/bean/AInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",sdk:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sdk/g/b;->c:Lcom/sdk/base/framework/bean/SInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sdk/g/b;->a:Lcom/sdk/base/framework/bean/PInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",sim:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",data:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e5} :catch_e6

    goto :goto_f7

    :catch_e6
    move-exception p1

    sget-object v2, Lcom/sdk/g/b;->i:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    sget-boolean v3, Lcom/sdk/g/b;->j:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/sdk/n/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    move-object p1, v1

    :goto_f7
    sget-object v2, Lcom/sdk/q/a;->a:Ljava/lang/String;

    const-string v3, "EncryptCbcIv"

    if-eqz p1, :cond_15a

    :try_start_fd
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_15a

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_10e

    goto :goto_15a

    :cond_10e
    if-nez p2, :cond_115

    sget-boolean p1, Lcom/sdk/q/a;->b:Z
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_112} :catch_158

    const-string p2, "encrypt key is null"

    goto :goto_15e

    :cond_115
    :try_start_115
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x10

    if-eq v4, v5, :cond_122

    sget-boolean p1, Lcom/sdk/q/a;->b:Z
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_11f} :catch_158

    const-string p2, "encrypt key length error"

    goto :goto_15e

    :cond_122
    :try_start_122
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v5, :cond_12d

    sget-boolean p1, Lcom/sdk/q/a;->b:Z
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_12a} :catch_158

    const-string p2, "ivStr length error"

    goto :goto_15e

    :cond_12d
    :try_start_12d
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    const-string v5, "AES"

    invoke-direct {v4, p2, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-direct {p2, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p3, 0x1

    invoke-virtual {v2, p3, v4, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/sdk/q/c;->a([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_16d

    :catch_158
    move-exception p1

    goto :goto_162

    :cond_15a
    :goto_15a
    sget-boolean p1, Lcom/sdk/q/a;->b:Z
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_15c} :catch_158

    const-string p2, "encrypt content is null"

    :goto_15e
    :try_start_15e
    invoke-static {v2, v3, p2, p1}, Lcom/sdk/i/a;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_161} :catch_158

    goto :goto_16d

    :goto_162
    sget-object p2, Lcom/sdk/q/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget-boolean p3, Lcom/sdk/q/a;->b:Z

    invoke-static {p2, v3, p1, p3}, Lcom/sdk/i/a;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    :goto_16d
    return-object v1
.end method

.method public a(IILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/sdk/g/b;->e:Lcom/sdk/e/a;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1, p2, p3}, Lcom/sdk/e/a;->a(IILjava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sdk/g/b;->e:Lcom/sdk/e/a;

    :cond_a
    return-void
.end method

.method public a(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "ITT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sdk/g/b;->e:Lcom/sdk/e/a;

    if-eqz v0, :cond_f

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sdk/e/a;->onSuccess(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sdk/g/b;->e:Lcom/sdk/e/a;

    :cond_f
    return-void
.end method
