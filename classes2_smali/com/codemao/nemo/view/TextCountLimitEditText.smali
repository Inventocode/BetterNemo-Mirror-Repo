.class public Lcom/codemao/nemo/view/TextCountLimitEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "TextCountLimitEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;
    }
.end annotation


# instance fields
.field private beforeText:Ljava/lang/String;

.field private isWorkName:Z

.field private lastIndex:I

.field private lastIndexEnd:I

.field private limitCount:I

.field private textTextWather:Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/view/TextCountLimitEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/view/TextCountLimitEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/view/TextCountLimitEditText;)Ljava/lang/String;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText;->beforeText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/codemao/nemo/view/TextCountLimitEditText;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/codemao/nemo/view/TextCountLimitEditText;->beforeText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/codemao/nemo/view/TextCountLimitEditText;)I
    .registers 1

    .line 15
    iget p0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText;->lastIndex:I

    return p0
.end method

.method static synthetic access$102(Lcom/codemao/nemo/view/TextCountLimitEditText;I)I
    .registers 2

    .line 15
    iput p1, p0, Lcom/codemao/nemo/view/TextCountLimitEditText;->lastIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/codemao/nemo/view/TextCountLimitEditText;)I
    .registers 1

    .line 15
    iget p0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText;->lastIndexEnd:I

    return p0
.end method

.method static synthetic access$202(Lcom/codemao/nemo/view/TextCountLimitEditText;I)I
    .registers 2

    .line 15
    iput p1, p0, Lcom/codemao/nemo/view/TextCountLimitEditText;->lastIndexEnd:I

    return p1
.end method

.method static synthetic access$300(Lcom/codemao/nemo/view/TextCountLimitEditText;)Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText;->textTextWather:Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/view/TextCountLimitEditText;)Z
    .registers 1

    .line 15
    iget-boolean p0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText;->isWorkName:Z

    return p0
.end method

.method static synthetic access$500(Lcom/codemao/nemo/view/TextCountLimitEditText;)I
    .registers 1

    .line 15
    iget p0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText;->limitCount:I

    return p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    if-eqz p2, :cond_20

    .line 66
    sget-object v0, Lcom/codemao/nemo/R$styleable;->TextCountLimitEditText:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/codemao/nemo/view/TextCountLimitEditText;->isWorkName:Z

    .line 68
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    const/4 p2, 0x2

    const v0, 0x7fffffff

    .line 69
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/TextCountLimitEditText;->limitCount:I

    .line 70
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    :cond_20
    new-instance p1, Lcom/codemao/nemo/view/TextCountLimitEditText$1;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/view/TextCountLimitEditText$1;-><init>(Lcom/codemao/nemo/view/TextCountLimitEditText;)V

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public getLimitCount()I
    .registers 2

    .line 41
    iget v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText;->limitCount:I

    return v0
.end method

.method public getTextTextWather()Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText;->textTextWather:Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;

    return-object v0
.end method

.method public setLimitCount(I)V
    .registers 2

    .line 45
    iput p1, p0, Lcom/codemao/nemo/view/TextCountLimitEditText;->limitCount:I

    return-void
.end method

.method public setTextTextWather(Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/codemao/nemo/view/TextCountLimitEditText;->textTextWather:Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;

    return-void
.end method

.method public setWorkName(Z)V
    .registers 2

    .line 53
    iput-boolean p1, p0, Lcom/codemao/nemo/view/TextCountLimitEditText;->isWorkName:Z

    return-void
.end method
