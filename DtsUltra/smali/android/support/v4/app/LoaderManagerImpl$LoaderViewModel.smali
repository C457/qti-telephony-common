.class Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;
.super Landroid/arch/lifecycle/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoaderViewModel"
.end annotation


# static fields
.field private static final b:Landroid/arch/lifecycle/o$a;


# instance fields
.field a:Landroid/support/v4/g/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/m",
            "<",
            "Landroid/support/v4/app/LoaderManagerImpl$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel$1;

    invoke-direct {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->b:Landroid/arch/lifecycle/o$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/arch/lifecycle/n;-><init>()V

    new-instance v0, Landroid/support/v4/g/m;

    invoke-direct {v0}, Landroid/support/v4/g/m;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->a:Landroid/support/v4/g/m;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->c:Z

    return-void
.end method

.method static a(Landroid/arch/lifecycle/p;)Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;
    .locals 5

    new-instance v2, Landroid/arch/lifecycle/o;

    sget-object v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->b:Landroid/arch/lifecycle/o$a;

    invoke-direct {v2, p0, v0}, Landroid/arch/lifecycle/o;-><init>(Landroid/arch/lifecycle/p;Landroid/arch/lifecycle/o$a;)V

    const-class v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "android.arch.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v2, Landroid/arch/lifecycle/o;->b:Landroid/arch/lifecycle/p;

    iget-object v0, v0, Landroid/arch/lifecycle/p;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/n;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, v2, Landroid/arch/lifecycle/o;->a:Landroid/arch/lifecycle/o$a;

    invoke-interface {v0}, Landroid/arch/lifecycle/o$a;->a()Landroid/arch/lifecycle/n;

    move-result-object v1

    iget-object v0, v2, Landroid/arch/lifecycle/o;->b:Landroid/arch/lifecycle/p;

    iget-object v0, v0, Landroid/arch/lifecycle/p;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/n;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/arch/lifecycle/n;->a()V

    :cond_1
    move-object v0, v1

    :cond_2
    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/arch/lifecycle/n;->a()V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->a:Landroid/support/v4/g/m;

    invoke-virtual {v0}, Landroid/support/v4/g/m;->b()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->a:Landroid/support/v4/g/m;

    invoke-virtual {v0, v2}, Landroid/support/v4/g/m;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$a;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$a;->e()Landroid/support/v4/a/b;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->a:Landroid/support/v4/g/m;

    iget v3, v2, Landroid/support/v4/g/m;->d:I

    iget-object v4, v2, Landroid/support/v4/g/m;->c:[Ljava/lang/Object;

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    const/4 v5, 0x0

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput v1, v2, Landroid/support/v4/g/m;->d:I

    iput-boolean v1, v2, Landroid/support/v4/g/m;->a:Z

    return-void
.end method
