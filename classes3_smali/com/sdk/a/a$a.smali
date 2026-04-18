.class public Lcom/sdk/a/a$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdk/a/a;-><init>(Landroid/content/Context;Ljava/net/URL;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/net/URL;

.field public final synthetic b:Lcom/sdk/a/a;


# direct methods
.method public constructor <init>(Lcom/sdk/a/a;Ljava/net/URL;)V
    .registers 3

    iput-object p1, p0, Lcom/sdk/a/a$a;->b:Lcom/sdk/a/a;

    iput-object p2, p0, Lcom/sdk/a/a$a;->a:Ljava/net/URL;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 4

    sput-object p1, Lcom/sdk/a/a;->e:Landroid/net/Network;

    :try_start_2
    iget-object v0, p0, Lcom/sdk/a/a$a;->b:Lcom/sdk/a/a;

    iget-object v1, p0, Lcom/sdk/a/a$a;->a:Ljava/net/URL;

    invoke-virtual {p1, v1}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, v0, Lcom/sdk/a/a;->a:Ljava/net/HttpURLConnection;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_e

    :catch_e
    return-void
.end method
